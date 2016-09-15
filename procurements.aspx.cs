using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class procurements : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string usercategory = (string)(Session["usercategory"]);
        

        if (!string.IsNullOrEmpty(Session["usercategory"] as string))
        {
            if (usercategory.ToString() == "admin")
            {
                HyperLink1.Visible = true;

            }
            else
            {
                HyperLink1.Visible = false;
            }
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
                GridView1.Columns[1].Visible = true;

            }
            else
            {
                GridView1.Columns[0].Visible = false;
                
            }
        }
        else
        {
            GridView1.Columns[0].Visible = false;
            GridView1.Columns[1].Visible = false;
        }
    }



    public void view_bids(object sender, EventArgs e)
    {
        procurements_div.Visible = false;
        bids_div.Visible = true;
    }

}