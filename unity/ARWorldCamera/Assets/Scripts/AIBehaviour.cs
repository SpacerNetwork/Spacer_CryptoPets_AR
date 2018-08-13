using System.Collections;
using System.Collections.Generic;
using MalbersAnimations;
using MalbersAnimations.Utilities;
using UnityEngine;

public class AIBehaviour : MonoBehaviour {

    private FoodData objectData;
    private Animator animator;
    private ObjectState currState;

    public ObjectState CurrState
    {
        get
        {
            return currState;
        }
    }

    private Vector3 targetPosition;
    private Vector3 initialPosition;

    [SerializeField]
    private float speed = 1f;

    public enum ObjectState
    {
        Idle,
        Chasing,   //This one is for the future fights logic
        Attacking, //This one is for the future fights logic
        Dying,
        Dead
    }

	// Use this for initialization
	void Start () 
    {
        animator = GetComponent<Animator>();
        objectData = GetComponentInParent<FoodData>();

        currState = ObjectState.Idle;
        initialPosition = transform.position;
	}
	
	// Update is called once per frame
	void Update () 
    {
        //StartCoroutine(StartChaseTarget());
        //StartChaseTarget();
	}

    public void MakeAsTarget() {
        // Can change target only if Pet is not in mutation process
        if (PlayerPetHandler.Instance.petControl.CurrentState == ARPet.PetState.Mutate)
            return;
        
        PlayerPetHandler.Instance.SetTarget(gameObject);
    }

    public void OnMouseDown()
    {
        MakeAsTarget();
    }

    //void StartChaseTarget() 
    //{
    //    if (currState == ObjectState.Dead)
    //        return;
        
    //    //yield return new WaitForSeconds(Random.Range(0, 3));

    //    if (IsCloseEnough(targetPosition, 0.1f))
    //        currState = ObjectState.Idle;
        
    //    if (currState != ObjectState.Chasing) {
    //        targetPosition = new Vector3(Random.Range(initialPosition.x - 0.5f, initialPosition.x + 0.5f),
    //                                     initialPosition.y,
    //                                     Random.Range(initialPosition.z - 0.5f, initialPosition.z + 0.5f));

    //        Debug.Log(targetPosition);
    //    }

    //    currState = ObjectState.Chasing;

    //    Vector3 inputAxes = new Vector3(targetPosition.x, 0, targetPosition.y);
    //    //anim.SetFloat(speedHash, inputAxes.magnitude); // Update the animator parameter for speed based on the joystick.
    //    SetLookDirection(inputAxes); // Set the cat to look in the correct direction

    //    // Move the cat, the animator will handle triggering the correct animations.
    //    transform.localPosition += (transform.forward * inputAxes.magnitude * Time.deltaTime * speed);
    //}

    //void SetLookDirection(Vector3 inputAxes)
    //{
    //    // Get the camera's y rotation, then rotate inputAxes by the rotation to get up/down/left/right according to the camera
    //    Quaternion yRotation = Quaternion.Euler(0, Camera.main.transform.rotation.eulerAngles.y, 0);
    //    Vector3 lookDirection = (yRotation * inputAxes).normalized;
    //    transform.rotation = Quaternion.LookRotation(lookDirection);
    //}

    public void GetHit(ARPet attacker, int damage) 
    {
        //this.attacker = PlayerPetHandler.Instance.petControl;

        //TODO: battle logic in the future;
        Kill();
    }

    public void Kill() 
    {
        animator.SetTrigger(Hash.Die);
        currState = ObjectState.Dying;

        StartCoroutine(Die());
    }

    IEnumerator Die()
    {
        PlayerPetHandler.Instance.petControl.CurrentState = ARPet.PetState.Mutate;

        yield return new WaitForSeconds(1);
        currState = ObjectState.Dead;

        //UnityMessageManager.Instance.NotifyAction(WorldActionType.Ate, objectData.Id);

        // Waiting till mutation will be done
        while (true)
        {
            if (PlayerPetHandler.Instance.petControl.CurrentState != ARPet.PetState.Mutate)
            {
                Destroy(gameObject);
                yield break;
            }

            yield return new WaitForSeconds(2);
        }
    }

    bool IsCloseEnough(Vector3 toPosition, float distance)
    {
        return Vector3.Distance(transform.position, toPosition) < distance;
    }
}
