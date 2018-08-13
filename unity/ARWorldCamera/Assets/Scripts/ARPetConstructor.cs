using System.Collections;
using System.Collections.Generic;
using MalbersAnimations.Utilities;
using UnityEngine;

public enum MaterialType { Magic, Spots, Skin };

public partial class ARPetConstructor : MonoBehaviour
{
    [SerializeField] private GameObject spots, magic, skin;

    private Renderer spotsRenderer;
    private Renderer magicRenderer;
    private Renderer skinRenderer;

    private int skinId;
    private int spotsId;
    private int magicId;

    private int eyesSize;
    private int earsSize;

    private int faceType;
    private int bellyType;
    private int backType;
    private int neckType;
    private int tailType;
    private int frontLegsType;
    private int backLegsType;

    private void Awake()
    {
        spotsRenderer = spots.GetComponent<Renderer>();
        magicRenderer = magic.GetComponent<Renderer>();
        skinRenderer = skin.GetComponent<Renderer>();
    }

    // Use this for initialization
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void UpdatePetGenes(PetData petData)
    {
        SkinId = petData.skinColor;
        SpotsId = petData.spotsColor;
        MagicId = petData.magicColor;

        EyesSize = petData.eyes;
        FaceType = petData.face;
        EarsSize = petData.ears;
        BellyType = petData.belly;
        BackType = petData.back;
        NeckType = petData.neck;
        TailType = petData.tail;
        FrontLegsType = petData.legsFront;
        BackLegsType = petData.legsBack;
    }

    public void setBlendShape(string name, float value)
    {
        var blendShapes = GetComponent<BlendShapes>();

        blendShapes.SetBlendShape(name, value);
    }

    public int EyesSize
    {
        get
        {
            return eyesSize;
        }

        set
        {
            setBlendShape(LimbParts.EYES, value);
            eyesSize = value;
        }
    }

    public int EarsSize
    {
        get
        {
            return earsSize;
        }

        set
        {
            setBlendShape(LimbParts.EARS, value);
            earsSize = value;
        }
    }

    public int FaceType
    {
        get
        {
            return faceType;
        }

        set
        {
            setBlendShape(LimbParts.FACE_ONE, value);
            setBlendShape(LimbParts.FACE_TWO, value);
            faceType = value;
        }
    }

    public int BellyType
    {
        get
        {
            return bellyType;
        }

        set
        {
            setBlendShape(LimbParts.BELLY_FAT, value);
            bellyType = value;
        }
    }

    public int BackType
    {
        get
        {
            return backType;
        }

        set
        {
            setBlendShape(LimbParts.BACK, value);
            backType = value;
        }
    }

    public int NeckType
    {
        get
        {
            return neckType;
        }

        set
        {
            setBlendShape(LimbParts.NECK_THIN, value);
            neckType = value;
        }
    }

    public int TailType
    {
        get
        {
            return tailType;
        }

        set
        {
            setBlendShape(LimbParts.TAIL, value);
            tailType = value;
        }
    }

    public int FrontLegsType
    {
        get
        {
            return frontLegsType;
        }

        set
        {
            setBlendShape(LimbParts.LEGS_FRONT_THICK, value);
            frontLegsType = value;
        }
    }

    public int BackLegsType
    {
        get
        {
            return backLegsType;
        }

        set
        {
            setBlendShape(LimbParts.LEGS_BACK_THICK, value);
            backLegsType = value;
        }
    }

    public int SkinId
    {
        get
        {
            return skinId;
        }

        set
        {
            if (skinId == value) return;
            skinId = value;

            //TODO: add logic for partly invisible pet
            if (value < 0 || value >= PlayerPetHandler.Instance.SkinMaterials.Count)
                value = 0; //Setting the most common skin

            skinRenderer.material = PlayerPetHandler.Instance.SkinMaterials[value];
        }
    }

    public int SpotsId
    {
        get
        {
            return spotsId;
        }

        set
        {
            if (spotsId == value) return;
            spotsId = value; //Possible this part just is not enabled (in case if id in not in rande)

            if (value < 0 || value >= PlayerPetHandler.Instance.SpotMaterials.Count)
            {
                spots.SetActive(false);
                return;
            }

            if (!spots.activeSelf)
                spots.SetActive(true);

            spotsRenderer.material = PlayerPetHandler.Instance.SpotMaterials[value];
        }
    }

    public int MagicId
    {
        get
        {
            return magicId;
        }

        set
        {
            if (magicId == value) return;
            magicId = value; //Possible this part just is not enabled (in case if id in not in rande)

            if (value < 0 || value >= PlayerPetHandler.Instance.MagicMaterials.Count)
            {
                magic.SetActive(false);
                return;
            }

            if (!magic.activeSelf)
                magic.SetActive(true);

            magicRenderer.material = PlayerPetHandler.Instance.MagicMaterials[value];
        }
    }
}