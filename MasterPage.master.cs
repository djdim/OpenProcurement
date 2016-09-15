using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Session["usercategory"] as string))
        {
            divsignup.Visible = false;
            logindiv.Visible = false;
            logoutdiv.Visible = true;

            if (Session["usercategory"].ToString() == "user")
            {
                div_menu_bids.Visible = true;
            }
            else div_menu_bids.Visible = false;

            Label_Menou_01.Text = "Συνδεμένος χρήστης";
            div_menu_login.Visible = false;
            div_menu_logout.Visible = true;
        }
        else
        {
            divsignup.Visible = true;
            logindiv.Visible = true;
            logoutdiv.Visible = false;
            div_menu_bids.Visible = false;
            Label_Menou_02.Text = "Δεν είστε συνδεμένος";
            div_menu_login.Visible = true;
            div_menu_logout.Visible = false;
        }
    }

}
