using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_bids : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;

        if (!string.IsNullOrEmpty(Session["usercategory"] as string))
        {
            Label1.Visible = false;

            if (Session["usercategory"].ToString() == "admin")
            {
                GridView1.Visible = true;
            }
            else GridView2.Visible = true;

        }
        
    }

    public void mygrid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        string usercategory = (string)(Session["usercategory"]);

        if (!string.IsNullOrEmpty(Session["usercategory"] as string))
        {
            if (usercategory.ToString() == "admin")
            {
                GridView1.Columns[0].Visible = true;
                //GridView2.Columns[0].Visible = true;
                

            }
            else
            {
                GridView1.Columns[0].Visible = false;
                GridView2.Columns[0].Visible = false;

            }
        }
        else
        {
            GridView1.Columns[0].Visible = false;
            GridView2.Columns[0].Visible = false;
            
        }
    }
}