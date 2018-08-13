using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FoodData : MonoBehaviour {
    private double _latitude;
    public double Lat
    {
        get
        {
            return _latitude;
        }
        set
        {
            _latitude = value;
        }
    }

    private double _longitude;
    public double Lon
    {
        get
        {
            return _longitude;
        }
        set
        {
            _longitude = value;
        }
    }

    private long _id;
    public long Id
    {
        get
        {
            return _id;
        }
        set
        {
            _id = value;
        }
    }

    void Start(){
        
	}
	
	void Update () {
		
	}

    public void SetData(long id, double lat, double lon) {
        _id = id;
        _latitude = lat;
        _longitude = lon;
    }
}
