using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mutation : MonoBehaviour
{

    static Mutation mInstance;

    public static Mutation Instance
    {
        get
        {
            if (mInstance == null)
            {
                GameObject go = new GameObject();
                mInstance = go.AddComponent<Mutation>();
            }
            return mInstance;
        }
    }

    private int GetGene(string genesStrain, int digits) {
        var start = genesStrain.Length - digits;
        var strGene = genesStrain.Substring(start, 2);
        
        return int.Parse(strGene);
    }

    private int GetMagicColor(int gene) {
        if (gene >= 20) // Chances are 20/80
            return -1;

        return gene % 11;
    }

    private int GetSkinColor(int gene) {
        return gene % 9;
    }

    private int GetSpotsColor(int gene) {
        if (gene >= 25) // Chances are 25/75
            return -1;

        return gene % 7;
    }

    private PetData GetEmptyFeelineGenes() {
        var petData = new PetData();

        petData.magicColor = -1;
        petData.spotsColor = -1;
        // All other params are equal to 0 by default

        return petData;
    }

    public PetData GetFeelineGenes(string genesStrain) {
        if (int.Parse(genesStrain) <= 1)
            return GetEmptyFeelineGenes();

        var petData = new PetData();

        petData.eyes = GetGene(genesStrain, 2);
        petData.face = GetGene(genesStrain, 4);
        petData.ears = GetGene(genesStrain, 6);
        petData.belly = GetGene(genesStrain, 8);
        petData.back = GetGene(genesStrain, 10);
        petData.neck = GetGene(genesStrain, 12);
        petData.tail = GetGene(genesStrain, 14);
        petData.legsFront = GetGene(genesStrain, 16);
        petData.legsBack = GetGene(genesStrain, 18);

        var magicColorGene = GetGene(genesStrain, 20);
        petData.magicColor = GetMagicColor(magicColorGene);

        var skinColorGene = GetGene(genesStrain, 22);
        petData.skinColor = GetSkinColor(skinColorGene);

        var spotsColorGene = GetGene(genesStrain, 24);
        petData.spotsColor = GetSpotsColor(spotsColorGene);

        return petData;
    }
}
