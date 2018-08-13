using System.Collections;
using System.Collections.Generic;
using Mapbox.Unity.Ar;
using UnityEngine;
using UnityEngine.XR.iOS;

public class PlayerPetHandler : MonoBehaviour {

    private static PlayerPetHandler _instance;
    public static PlayerPetHandler Instance { get { return _instance; } }

    [SerializeField]
    private GameObject petPrefab;

    [SerializeField]
    public Transform petMaster;

    [SerializeField] private List<Material> skinMaterials;

    public List<Material> SkinMaterials
    {
        get
        {
            return skinMaterials;
        }
    }

    [SerializeField] private List<Material> spotMaterials;

    public List<Material> SpotMaterials
    {
        get
        {
            return spotMaterials;
        }
    }

    [SerializeField] private List<Material> magicMaterials;

    public List<Material> MagicMaterials
    {
        get
        {
            return magicMaterials;
        }
    }

    [HideInInspector] public GameObject pet;
    [HideInInspector] public ARPet petControl;

    private ARPetConstructor petConstructor;

    //[SerializeField]
    //private GameObject wholeScene;

    private void Awake()
    {
        _instance = this;
    }

    // Use this for initialization
    void Start () {
        
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void GetPlayerLocation() {
        var coords = ARFoodProvider.Instance.deviceLocation._currentLocation.LatitudeLongitude;

        //UnityMessageManager.Instance.SendCurrentLocation(coords.x, coords.y);
    }

    // Just for tests only
    public void FinishMutation()
    {
        if (petControl == null)
            return;

        petControl.CurrentState = ARPet.PetState.None;
        //BuildPet(jsonData);
        BuildPet(GetRandomPetData());
    }

    public void FinishMutation(string jsonData)
    {
        if (petControl == null)
            return;

        petControl.CurrentState = ARPet.PetState.None;
        BuildPet(jsonData);
    }

    public void BuildPet(string jsonData)
    {
        var petData = JsonUtility.FromJson<PetData>(jsonData);

        BuildPet(petData);
    }

    public void BuildPet(PetData petData) {
        if (pet == null)
        {

            pet = Instantiate(petPrefab);

            petControl = pet.GetComponentInChildren<ARPet>();
            petControl.petMaster = petMaster;

            petConstructor = pet.GetComponentInChildren<ARPetConstructor>();

            SetPosition();
        }

        petConstructor.UpdatePetGenes(petData);
    }

    // This function is only for effect during mutation process
    public void RandomBuildPet()
    {
        //if (petControl == null || petControl.CurrentState != ARPet.PetState.Mutate)
            //return;

        BuildPet(GetRandomPetData());
    }

    public PetData GetRandomPetData() {
        var petData = new PetData();

        petData.skinColor = Random.Range(0, SkinMaterials.Count - 1);
        petData.spotsColor = Random.Range(-50, SpotMaterials.Count - 1);
        petData.magicColor = Random.Range(-50, MagicMaterials.Count - 1);

        petData.eyes = Random.Range(0, 100);
        petData.face = Random.Range(0, 100);
        petData.ears = Random.Range(0, 100);
        petData.belly = Random.Range(0, 100);
        petData.back = Random.Range(0, 100);
        petData.neck = Random.Range(0, 100);
        petData.tail = Random.Range(0, 100);
        petData.legsFront = Random.Range(0, 100);
        petData.legsBack = Random.Range(0, 100);

        return petData;
    }

    // To keep pet and food on the same height
    public void UpdatePetAltitude(float y) {
        if (pet == null)
            return;
        
        var newPetPosition = pet.transform.position;
        newPetPosition = new Vector3(newPetPosition.x, y, newPetPosition.z);
        pet.transform.position = newPetPosition;
    }

    public void UpdatePetPosition(Vector3 position) {
        
    }

    public void SetTarget(GameObject target) {
        if (petControl == null) return;

        petControl.target = target;
    }

    public void SetPosition()
    {
        if (pet == null) return;
        
        // Project from the middle of the screen to look for a hit point on the detected surfaces.
        var screenPosition = Camera.main.ScreenToViewportPoint(new Vector2(Screen.width / 2f, Screen.height / 2f));
        ARPoint pt = new ARPoint
        {
            x = screenPosition.x,
            y = screenPosition.y
        };

        // Try to hit within the bounds of an existing AR plane.
        List<ARHitTestResult> hitResults = UnityARSessionNativeInterface.GetARSessionNativeInterface().HitTest(
                                               pt,
                                               ARHitTestResultType.ARHitTestResultTypeExistingPlaneUsingExtent);

        if (hitResults.Count > 0)
        { // If a hit is found, set the position and reset the rotation.
            pet.transform.rotation = Quaternion.Euler(Vector3.zero);
            pet.transform.position = UnityARMatrixOps.GetPosition(hitResults[0].worldTransform);
        }
    }
}
