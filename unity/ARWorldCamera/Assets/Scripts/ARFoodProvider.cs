namespace Mapbox.Unity.Ar
{
	using System.Collections;
	using System.Collections.Generic;
	using UnityEngine;
	using Mapbox.Unity.Utilities;
	using Mapbox.Unity.Map;
    using Mapbox.Unity.Location;

    public class ARFoodProvider : MonoBehaviour {
		private static ARFoodProvider _instance;
		public static ARFoodProvider Instance { get { return _instance; } }

		[SerializeField]
		private AbstractMap _map;

		[HideInInspector]
        public List<GameObject> nearestFoodObjects = new List<GameObject>();
		[HideInInspector]
        public bool gotInitialAlignment = false;

		public DeviceLocationProvider deviceLocation;

		void Awake(){
			_instance = this;
		}

		public void GotAlignment(){
			if (gotInitialAlignment) {
                //UpdateARFoodLocations(deviceLocation._currentLocation.LatitudeLongitude);
                UpdateARFoodLocations();
				Console.Instance.Log("Reposition finished.", "lightblue");
			}
            else {
                Console.Instance.Log("Waiting for initial position of food objects.", "lightblue");
            }
		}

        public void RemoveCurrentARFood() {
			foreach (GameObject foodObj in nearestFoodObjects) {
                Destroy (foodObj);
			}

			nearestFoodObjects.Clear ();
		}

		public void LoadARFood(List<GameObject> foodObjectList) {
            StartCoroutine (LoadARFoodRoutine(foodObjectList));
		}

        IEnumerator LoadARFoodRoutine(List<GameObject> foodObjectList) {
            //RemoveCurrentARFood ();

			yield return new WaitForSeconds(2f);

            foreach (GameObject foodObject in foodObjectList) {
                FoodData data = foodObject.GetComponent<FoodData> ();

				Vector3 _targetPosition =_map.Root.TransformPoint(Conversions.GeoToWorldPosition(
                    data.Lat, data.Lon, _map.CenterMercator, _map.WorldRelativeScale).ToVector3xz());

                // Setting AR world location according to given GPS data
				foodObject.transform.position = _targetPosition;

				// Adding for the later updates/reposition
				nearestFoodObjects.Add(foodObject);
			}
		}

		// Update AR positions once GPS location is updated
        public void UpdateARFoodLocations() {
			if (nearestFoodObjects.Count > 0) {
                foreach (GameObject foodObject in nearestFoodObjects) {
                    
                    FoodData data = foodObject.GetComponent<FoodData> ();
                    Vector3 _targetPosition = _map.Root.TransformPoint(Conversions.GeoToWorldPosition(data.Lat, data.Lon,
                                                                                                     _map.CenterMercator,
                                                                                                     _map.WorldRelativeScale).ToVector3xz());
                    
                    foodObject.transform.position = _targetPosition;
				}

                // Choosing height of the first object (all of them are the same)
                PlayerPetHandler.Instance.UpdatePetAltitude(nearestFoodObjects[0].transform.position.y);
			}
		}
	}
}

