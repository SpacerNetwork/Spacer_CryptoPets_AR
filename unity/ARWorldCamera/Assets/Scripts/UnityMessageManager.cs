using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Mapbox.Unity.Ar;
using UnityEngine;

public enum WorldActionType {
    Ate,
    Killed
}

[Serializable]
public class UnityAction {
    public WorldActionType actionType;
    public int opponentId;

    public UnityAction(WorldActionType type, int opponentId) {
        this.actionType = type;
        this.opponentId = opponentId;
    }
}

[Serializable]
public class PetData {
    public int magicColor;
    public int skinColor;
    public int spotsColor;
    public int eyes, face, ears, belly, back, neck, tail;
    public int legsFront, legsBack;
}

[Serializable]
public class LatLonData {
    public double lat;
    public double lon;

    public LatLonData(double lat, double lon) {
        this.lat = lat;
        this.lon = lon;
    }
}

//public class UnityMessageManager : MonoBehaviour
//{
//#if UNITY_IOS && !UNITY_EDITOR
//    [DllImport("__Internal")]
//    private static extern void onUnityMessage(string message);
//#endif

//    public const string MessagePrefix = "@UnityMessage@";

//    private static int ID = 0;

//    private static int generateId()
//    {
//        ID = ID + 1;
//        return ID;
//    }

//    public static UnityMessageManager Instance { get; private set; }

//    public delegate void MessageDelegate(string message);
//    public event MessageDelegate OnMessage;

//    static UnityMessageManager()
//    {
//        GameObject go = new GameObject("UnityMessageManager");
//        DontDestroyOnLoad(go);
//        Instance = go.AddComponent<UnityMessageManager>();
//    }

//    void Awake()
//    {
//    }

//    public void SendCurrentLocation(double lat, double lon) {
//        var jsonFile = JsonUtility.ToJson(new LatLonData(lat, lon));

//        Debug.Log(jsonFile);
//        SendMessageToRN(jsonFile);
//    }

//    public void NotifyAction(WorldActionType actionType, int opponentId) {
//        var jsonFile = JsonUtility.ToJson(new UnityAction(actionType, opponentId));

//        Debug.Log(jsonFile);
//        SendMessageToRN(jsonFile);
//    }

//    private void SendMessageToRN(string message)
//    {
//        if (Application.platform == RuntimePlatform.Android)
//        {
//            using (AndroidJavaClass jc = new AndroidJavaClass("com.reactnative.unity.view.UnityUtils"))
//            {
//                jc.CallStatic("onUnityMessage", message);
//            }
//        }
//        else if (Application.platform == RuntimePlatform.IPhonePlayer)
//        {
//#if UNITY_IOS && !UNITY_EDITOR
//            onUnityMessage(message);
//#endif
//        }
//    }

//    void onMessage(string message)
//    {
//        if (OnMessage != null)
//        {
//            OnMessage(message);
//        }
//    }
//}