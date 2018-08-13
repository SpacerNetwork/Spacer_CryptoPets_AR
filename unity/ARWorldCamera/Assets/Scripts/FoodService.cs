namespace Mapbox.Unity.Ar
{
    using System;
    using System.Collections.Generic;
    using UnityEngine;
    using System.Linq;

    public class JsonFoodDataList {
        public List<JsonFoodData> food;
    }

    [Serializable]
    public class JsonFoodData {
        // 0-7 (index of food prefab)
        public int type;

        public double lat;
        public double lon;

        public long id;
    }

    public class FoodService : MonoBehaviour
    {
        private static FoodService _instance;
        public static FoodService Instance { get { return _instance; } }

        public List<GameObject> foodPrefabsAR;

        void Awake()
        {
            _instance = this;
        }

        void Start()
        {
            LoadNearestFood("{ \"food\" : [" +
                                                                   "{" +
                                                                    "\"id\" : 1," +
                                                                    "\"lat\" : 55.649544," +
                                                                    "\"lon\" : 37.542050" +
                                                                   "}," +
                                                                   "{" +
                                                                    "\"id\" : 3," +
                                                                    "\"lat\" : 55.649974," +
                                                                    "\"lon\" : 37.542585" +
                                                                   "}" +
                                                                   "]" +
                                                                   "}");
        }

        public void LoadNearestFood(string jsonFoodList)
        {
            var foodData = JsonUtility.FromJson<JsonFoodDataList>(jsonFoodList);

            List<GameObject> foodObjectList = new List<GameObject>();

            // Create instances for all food from JSON file
            foreach (var food in foodData.food) {
                Debug.Log(food.id + " : " + food.lat + " - " + food.lon);
                var currFood = Instantiate(foodPrefabsAR[food.type]);
                currFood.GetComponent<FoodData>().SetData(food.id, food.lat, food.lon);
                foodObjectList.Add(currFood);
            }

            // Now let's place our food in real world!
            ARFoodProvider.Instance.LoadARFood(foodObjectList);

            // Let our food objects to be updated in AR World later
            ARFoodProvider.Instance.gotInitialAlignment = true;
        }
    }
}
