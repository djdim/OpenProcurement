using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void  GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DivGridview.Visible = false;
        DivCreatebid.Visible = true;
        GridViewRow row = GridView1.SelectedRow;
        Label2.Text = row.Cells[1].Text;
        Label3.Text = row.Cells[2].Text;
        Label4.Text = Session["companyname"].ToString();
    }

    protected void Back_Click(object sender, EventArgs e)
    {
        DivGridview.Visible = true;
        DivCreatebid.Visible = false;
    }
    protected void addnewbid_click (object sender, EventArgs e)
    {
        DivCreatebid.Visible = false;

        using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["eProcurementDBConnectionString"].ConnectionString.ToString()))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO Bids ([procurementID],company,bidprice) VALUES (@procurementID, @company, @bidprice)";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@procurementID", Label2.Text);
            cmd.Parameters.AddWithValue("@company", Label4.Text);
            cmd.Parameters.AddWithValue("@bidprice", TextBox1.Text);
            cmd.Connection = connection;
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();

            Label1.Visible = true;
            Label1.Text = "Επιτυχής πλειοδότηση!";
        }

    }
}