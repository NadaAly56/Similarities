using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sim : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
       
    }
   
    protected void ButtonSearchAya_Click(object sender, EventArgs e)
    {
        ArrayList Aya = new ArrayList();
        string m = TextBox1.Text;
        m = m.Replace("َ", "");
        m = m.Replace("ً", "");
        m = m.Replace("ُ", "");
        m = m.Replace("ٌ", "");
        m = m.Replace("ِ", "");
        m = m.Replace("ٍ", "");
        m = m.Replace("ّ", "");
        m = m.Replace("ْ", "");
        m = m.Replace("ء", "");
        m = m.Replace("أ", "ا");
        m = m.Replace("إ", "ا");
        m = m.Replace("آ", "ا");
        m = m.Replace("لإ", "لا");
        m = m.Replace("لآ", "لا");
        m = m.Replace("لأ", "لا");
        m = m.Replace("ۭ", "");
        m = m.Replace("ۖ", "");
        m = m.Replace("۟", "");
        m = m.Replace("ٱ", "ا");
        m = m.Replace("ٰ", "");
        m = m.Replace("ۢ", "");
        m = m.Replace("ۦ", "");
        m = m.Replace("ۚ", "");
         TextBox1.Text = m;
         Aya.Add(TextBox1.Text);
       
        MultiViewSearch.ActiveViewIndex = 0;
       
    }
       
    protected void ButtonSearchTitle_Click(object sender, EventArgs e)
    {
        MultiViewSearch.ActiveViewIndex = 1;
        
    }


    /// <summary>
    /// ///////////////////////////////////////////////
    /// </summary>
    protected void GetTitlesSura()
    {
        ArrayList list = new ArrayList();
        for (int i = 0; i < CheckBoxListSurahs.Items.Count; i++)
        {
            if (CheckBoxListSurahs.Items[i].Selected)
            {
                list.Add(CheckBoxListSurahs.Items[i].Value);
            }
        }

       
        try
        {
            string query = " SELECT DISTINCT Titles.TitleText, Titles.TitleID, Suras.SN, Suras.SurahName, Ayat.AyaCode, Ayat.AN " +
                    "  FROM     Titles INNER JOIN TitlesSegments ON Titles.TitleID = TitlesSegments.TitleID INNER JOIN SimSegments ON TitlesSegments.SegID = SimSegments.SegID " +
                     " INNER JOIN Ayat ON SimSegments.AyaCode = Ayat.AyaCode INNER JOIN Suras ON Ayat.SN = Suras.SN " +
                  " WHERE  (Suras.SN in (";
            
            foreach (object i in list)
            {
                query += int.Parse(i.ToString()) + ",";

            }

            query += "-1)) order by Suras.SN, Ayat.AyaCode";


          

            SqlDataSourceTitleSura.SelectCommand = query;
            SqlDataSourceTitleSura.DataBind();
            DataListTitleSura.DataBind();

        }
        catch (Exception)
        { }
    }
    
    protected void ButtonNavSurah_Click(object sender, EventArgs e)
    {
        GetTitlesSura();
        MultiViewPage.ActiveViewIndex = 0;
        MultiViewTitles.ActiveViewIndex = 0;
        MultiViewSuraNav.ActiveViewIndex = 0;

    }
    protected void ButtonNavQuranSurah_Click(object sender, EventArgs e)
    {
        GetTitlesSura();
        MultiViewPage.ActiveViewIndex = 0;
        MultiViewTitles.ActiveViewIndex = 0;
        MultiViewSuraNav.ActiveViewIndex = 1;

    }
   /// <summary>
   /// //////////////////////////////////////////
   /// </summary>
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

       
    }
    protected void GetTitlesPart()
    {
        ArrayList list = new ArrayList();
        for (int i = 0; i < CheckBoxListParts.Items.Count; i++)
        {
            if (CheckBoxListParts.Items[i].Selected)
            {
                list.Add(CheckBoxListParts.Items[i].Value);
            }
        }

        //ArrayList list = (ArrayList)ViewState["list"];
        try
        {
            string query = " SELECT Titles.TitleText, Titles.TitleID, Quarters.Joz, Suras.SurahName "+
                    " FROM     Ayat INNER JOIN  Quarters ON Ayat.QuartID = Quarters.QuartID INNER JOIN Suras ON Ayat.SN = Suras.SN INNER JOIN Titles ON Ayat.AyaCode = Titles.AyaCode "+
                   " WHERE  (Quarters.Joz IN (";
            foreach (object i in list)
            {
                query += int.Parse(i.ToString()) + ",";

            }

            query += "-1)) order by Suras.SN, Ayat.AyaCode";
            

            SqlDataSourceTitlePart.SelectCommand = query;
            SqlDataSourceTitlePart.DataBind();
            DataListTitlePart.DataBind();

        }
        catch (Exception)
        { }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        
    }
    protected void ButtonNavPart_Click(object sender, EventArgs e)
    {
        GetTitlesPart();
        MultiViewPage.ActiveViewIndex = 0;
        MultiViewTitles.ActiveViewIndex = 1;
        MultiViewSuraNav.ActiveViewIndex = 2;
    }
    protected void ButtonNavQuranPart_Click(object sender, EventArgs e)
    {
        GetTitlesPart();
        MultiViewPage.ActiveViewIndex = 0;
        MultiViewTitles.ActiveViewIndex = 1;
        MultiViewSuraNav.ActiveViewIndex = 3;

    }

    protected void SqlDataSourceTitleSura_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        
    }
    protected void DataListTitleSura_SelectedIndexChanged(object sender, EventArgs e)
    {
        ArrayList list = new ArrayList();
        for (int i = 0; i < CheckBoxListSurahs.Items.Count; i++)
        {
            if (CheckBoxListSurahs.Items[i].Selected)
            {
                list.Add(CheckBoxListSurahs.Items[i].Value);
            }
        }

        try
        {
            string query2 = " SELECT distinct SimSegments.SegmentText, SimSegments.Post, SimSegments.Pre, Titles.TitleText, Titles.TitleID, Suras.SurahName, Suras.SN, Ayat.AN FROM SimSegments INNER JOIN TitlesSegments ON SimSegments.SegID = TitlesSegments.SegID INNER JOIN Titles ON TitlesSegments.TitleID = Titles.TitleID INNER JOIN Ayat ON SimSegments.AyaCode = Ayat.AyaCode INNER JOIN Suras ON Ayat.SN = Suras.SN AND Ayat.SN in (";
            
            foreach (object i in list)
            {
                query2 += int.Parse(i.ToString()) + ",";
            }
            
            int K = int.Parse(DataListTitleSura.SelectedValue.ToString());
           
            ViewState["K"] = K;
            query2 += "-1) and (Titles.TitleID = " + ViewState["K"] + " ) ORDER BY Suras.SN ";
            
            SqlDataSourceTitlesSuraAyat.SelectCommand = query2;
           
            DataListTitlesSuraAyat.DataBind();

        }
        catch (Exception)
        {
            

        }
    }
    protected void SqlDataSourcePartQuranNav_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {

    }
    protected void DataListTitlePart_SelectedIndexChanged(object sender, EventArgs e)
    {
        ArrayList list = new ArrayList();
        for (int i = 0; i < CheckBoxListParts.Items.Count; i++)
        {
            if (CheckBoxListParts.Items[i].Selected)
            {

                list.Add(CheckBoxListParts.Items[i].Value);
            }
        }

        try
        {
            string query2 = " SELECT SimSegments.Pre, SimSegments.SegmentText, SimSegments.Post, Titles.TitleText, Quarters.Joz, Suras.SurahName, Ayat.AN " +
   " FROM     SimSegments INNER JOIN TitlesSegments ON SimSegments.SegID = TitlesSegments.SegID INNER JOIN Titles ON TitlesSegments.TitleID = Titles.TitleID INNER JOIN " +
                "  Ayat ON SimSegments.AyaCode = Ayat.AyaCode INNER JOIN " +
                 " Quarters ON Ayat.QuartID = Quarters.QuartID INNER JOIN Suras ON Ayat.SN = Suras.SN " +
                 " WHERE (Quarters.Joz in ( ";

            foreach (object i in list)
            {
                query2 += int.Parse(i.ToString()) + ",";
            }
            int k = int.Parse(DataListTitlePart.SelectedValue.ToString());
            query2 += "-1)) and (Titles.TitleID = " + k.ToString() + " ) ORDER BY Suras.SN ";
            SqlDataSourcePartNav.SelectCommand = query2;
            
            DataListPartNav.DataBind();
        }
        catch (Exception)
        {


        }
    }
}