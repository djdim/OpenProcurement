using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DivDiagwnismos.Visible = true;
        Button1.Visible = false;


    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_companies.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["eProcurementDBConnectionString"].ConnectionString.ToString()))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO procurements ([name],protocol,hospital,category, type, amount, specifications, creation_date, expiration_date) VALUES (@name, @protocol, @hospital, @category, @type, @amount, @specifications, @creation_date, @expiration_date)";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@protocol", TextBox2.Text);
            cmd.Parameters.AddWithValue("@hospital", DropDownList1.SelectedItem.Value.ToString());
            cmd.Parameters.AddWithValue("@category", TextBox4.Text);
            cmd.Parameters.AddWithValue("@type", TextBox5.Text);
            cmd.Parameters.AddWithValue("@amount", TextBox6.Text);
            cmd.Parameters.AddWithValue("@specifications", TextBox7.Text);
            //Get the date
            DateTime dateTimeVariable = DateTime.Now;
            cmd.Parameters.AddWithValue("@creation_date", dateTimeVariable.ToString("yyyyMMdd"));
            cmd.Parameters.AddWithValue("@expiration_date", TextBox8.Text);
            cmd.Connection = connection;
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();

            DivDiagwnismos.Visible = false;

            Label2.Visible = true;
            Label2.Text = "Η Προκύρηξη καταχωρήθηκε με επιτυχία!";

        }

     }
}