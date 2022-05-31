using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;
using System.Collections;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//  
	}
    public static string Aya(string seg)
    {
        //ArrayList list = new ArrayList();
        //list.Add(seg);
        string newText = "";
        newText = seg.Replace("َ","");
        newText = seg.Replace("ً", "");
        newText = seg.Replace("ُ", "");
        newText = seg.Replace("ٌ", "");
        newText = seg.Replace("ِ", "");
        newText = seg.Replace("ٍ", "");
        newText = seg.Replace("~", "");
        newText = seg.Replace("ْ", ""); ;
        newText = seg.Replace("ّ", "");
      
        //list.Add(newText);
       
        return newText;
     
    }
}