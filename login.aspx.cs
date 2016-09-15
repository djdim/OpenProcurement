using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading.Tasks;
using System.Text;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "")
        {
            Label1.Text = "Please enter a valid user name!";
            Label2.Text = "Please enter a valid password!";
            TextBox1.Focus();
        }
        else if (TextBox2.Text == "")
        {
            Label1.Text = "";
            Label2.Text = "Please enter a valid password!";
            TextBox2.Focus();
        }
        else if (TextBox1.Text == "")
        {
            Label1.Text = "Please enter a valid user name!";
            Label2.Text = "";
            TextBox1.Focus();
        }

        using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["eProcurementDBConnectionString"].ConnectionString.ToString()))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM users WHERE username = @username AND password = @password";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.Connection = connection;
            connection.Open();
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                int count = 0;
                while (reader.Read())
                {
                    count += 1;
                    Session["idusers"] = reader.GetInt32(0).ToString().TrimEnd();
                    Session["username"] = reader.GetString(1).ToString().TrimEnd();
                    Session["usercategory"] = reader.GetString(3).ToString().TrimEnd();
                }
                connection.Close();

                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "SELECT * FROM Companies WHERE idusers = @idusers";
                cmd.CommandType = CommandType.Text;
                cmd1.Parameters.AddWithValue("@idusers", Session["idusers"].ToString());
                cmd1.Connection = connection;
                connection.Open();
                using (SqlDataReader reader1 = cmd1.ExecuteReader())
                {

                    while (reader1.Read())
                    {

                        Session["companyID"] = reader1.GetInt32(0).ToString().TrimEnd();
                        Session["companyname"] = reader1.GetString(1).ToString().TrimEnd();

                    }
                    connection.Close();
                }

                if (count == 1)
                {
                    string usercategory = (string)(Session["usercategory"]);
                    if (usercategory.ToString() == "admin")
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else if (usercategory.ToString() == "user")
                    {
                        Response.Redirect("user.aspx");
                    }
                }
                else
                {
                    Label3.Text = "Λάθος ονομα χρήστη/κωδικός πρόσβασης";
                }

            }

        }

    }

}