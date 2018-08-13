using System.Collections;
using System.Collections.Generic;
using System.Linq;
using MalbersAnimations;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.XR.iOS;

public class ARPet : MonoBehaviour {

    public UnityEvent OnAttack;

    [HideInInspector]
    public bool isAttacking = false;

    public enum PetAction
    {
        None = -2,
        Drink = 1,
        Eat,
        Stun,
        CrawlUnder,
        Sleep,
        Lie
    }

    public enum PetState
    {
        None,
        Chase,
        Mutate
    }

    private PetState _currentState;
    public PetState CurrentState
    {
        get
        {
            return _currentState;
        }
        set
        {
            _currentState = value;
        }
    }

    private Transform currentTarget;

    public Transform petMaster;

    [HideInInspector] public GameObject target;

    [SerializeField] private float petDistance = 1f;
    [SerializeField] private float startChaseInterval = 3f;
    [SerializeField] private float speed = 2f;
    [SerializeField] private int damagePower = 100;

    private Animator anim;
    private ARPetConstructor petConstructor;
    private CharacterController controller;

    internal float attackDelay = 0.5f;

    // Use this for initialization
    void Start () {
        CurrentState = PetState.None;

        anim = GetComponent<Animator>();
        petConstructor = GetComponent<ARPetConstructor>();
        //anim.CrossFade(idle.name);

        currentTarget = petMaster;
	}
	
	// Update is called once per frame
	void Update () {
        if (target == null)
        {
            anim.SetInteger(Hash.IDAction, (int)PetAction.None); //IDAction -2 to stop actions if they're running
            ChaseTarget(petMaster.position, startChaseInterval, petDistance);
        }
        else
        {
            var mob = target.GetComponent<AIBehaviour>();

            ChaseTarget(target.transform.position, 0f, 0.8f);

            if (mob.CurrState == AIBehaviour.ObjectState.Dead) {
                anim.SetBool(Hash.Action, true);
                anim.SetInteger(Hash.IDAction, (int)PetAction.Eat); //IDAction -2 to stop eat
                PlayerPetHandler.Instance.RandomBuildPet();
            }
            else
                AttackOpponent(mob);
        }
	}

    void Awake()
    {
        Joystick.JoystickMoved += UpdateMove;
    }

    void OnDestroy()
    {
        Joystick.JoystickMoved -= UpdateMove;
    }

    private void UpdateMove(Vector2 input)
    {
        if (input.Equals(Vector2.zero))
        {
            anim.SetFloat(Hash.Speed, 0f);
            return;
        }

        Vector3 inputAxes = new Vector3(input.x, 0, input.y);
        Debug.Log(input.x + "  " + input.y);
        //anim.SetFloat(speedHash, inputAxes.magnitude); // Update the animator parameter for speed based on the joystick.
        SetLookDirection(inputAxes); // Set the cat to look in the correct direction

        // Move the cat, the animator will handle triggering the correct animations.
        transform.localPosition += (transform.forward * inputAxes.magnitude * Time.deltaTime * speed);
        //skeletonPrefab.localPosition += (transform.forward * inputAxes.magnitude * Time.deltaTime * speed);

        anim.SetFloat(Hash.Speed, 3.0f);
    }

    void SetLookDirection(Vector3 inputAxes)
    {
        // Get the camera's y rotation, then rotate inputAxes by the rotation to get up/down/left/right according to the camera
        Quaternion yRotation = Quaternion.Euler(0, Camera.main.transform.rotation.eulerAngles.y, 0);
        Vector3 lookDirection = (yRotation * inputAxes).normalized;
        transform.rotation = Quaternion.LookRotation(lookDirection);
    }

    void AttackOpponent(AIBehaviour opponent) {
        if (target == null || isAttacking)
            return;

        if (!IsCloseEnough(target.transform.position, 0.8f))
            return;

        transform.LookAt(target.transform.position);
        anim.SetTrigger(Hash.Attack);

        opponent.GetHit(this, damagePower);
    }

    void ChaseTarget(Vector3 targetPosition, float chaseInterval, float minDistance) {
        if (CurrentState == PetState.Mutate)
            return;
        
        //var masterPosition = petMaster.position;
        targetPosition.y = transform.position.y;

        if (CurrentState != PetState.Chase && !IsCloseEnough(targetPosition, minDistance + chaseInterval))
            CurrentState = PetState.Chase;
        
        if (IsCloseEnough(targetPosition, minDistance)) {
            CurrentState = PetState.None;
            anim.SetFloat(Hash.Speed, 0f);
            return;
        }

        if (CurrentState == PetState.Chase) {
            transform.LookAt(targetPosition);
            anim.SetFloat(Hash.Speed, 3.0f);
        }
    }

    bool IsCloseEnough(Vector3 targetPosition, float distance) {
        return Vector3.Distance(transform.position, targetPosition) < distance;
    }
}