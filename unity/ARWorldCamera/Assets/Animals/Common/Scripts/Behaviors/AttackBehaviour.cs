using UnityEngine;

namespace MalbersAnimations
{
    /// <summary>
    /// Enable Disable the Attack Triggers on the Animal
    /// </summary>
    public class AttackBehaviour : StateMachineBehaviour
    {
        public int AttackTrigger = 1;                           //ID of the Attack Trigger to Enable/Disable during the Attack Animation
        [Range(0, 1)] public float On = 0.3f;
        [Range(0, 1)] public float Off = 0.6f;


        private bool isOn, isOff;
        private ARPet animal;

        private float startAttackTime;  //Time when the Attack Animation Started
        private float attackDelay;      //Duration of the Attack on the Animal (before he can attack again)


        override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
        {
            animal = animator.GetComponent<ARPet>();
            animal.isAttacking = true;                              //Set is Attacking to true so it cannot be interrupted the current attack animation
            isOn = isOff = false;                                   //Reset the ON/OFF parameters (to be used on the Range of the animation
            attackDelay = animal.attackDelay;                       //Get the Attack Delay
            startAttackTime = Time.time;                            //Store the time when the Attack started
        }

        override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
        {
            animal.isAttacking = true;                                  //Important Make Sure its stays true!!

            if (!isOn && (stateInfo.normalizedTime % 1) >= On)
            {
                //animal.AttackTrigger(AttackTrigger);
                isOn = true;
            }

            if (!isOff && (stateInfo.normalizedTime % 1) >= Off)
            {
                //animal.AttackTrigger(0);
                isOff = true;
            }

            if (attackDelay > 0)
            {
                if (Time.time - startAttackTime >= attackDelay)
                {
                    animal.isAttacking = false;
                }
            }
        }

        override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
        {
            //animal.AttackTrigger(0);                //Disable all Attack Triggers
            isOn = isOff = false;                   //Reset the ON/OFF variables
            animal.isAttacking = false;             //Make Sure it Stop attacking
        }

    }
}