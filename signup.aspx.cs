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

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Clear Labels//
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label6.Text = "";

        //check if all fields are ok
        bool key = true;

        if (TextBox1.Text == "")
        {
            Label1.Text = "Παρακαλώ εισάγετε ένα σωστό όνομα χρήστη";
            TextBox1.Focus();
            key = false;

        }
        if (TextBox2.Text == "")
        {
            Label2.Text = "Παρακαλώ εισάγετε ένα σωστό κωδικό";
            TextBox2.Focus();
            key = false;
        }
        if (TextBox2.Text  != TextBox3.Text  )


        {
            Label3.Text = "Τα πεδία των κωδικών δεν ταιριάζουν μεταξύ τους";
            TextBox3.Focus();
            key = false;

        }

        if (TextBox4.Text == "")

        {
            Label4.Text = "Παρακαλώ εισάγεται ένα σωστό email";
            TextBox4.Focus();
            key = false;
        }

        //if all fields are non empty (using var key) rin sql queries
        if (key == true)
        {

            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["eProcurementDBConnectionString"].ConnectionString.ToString()))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO Users ([username],password,category,email) OUTPUT INSERTED.idusers VALUES (@username, @password, @category, @email)";
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);
                cmd.Parameters.AddWithValue("@category", "user");
                cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                connection.Open();
                cmd.Connection = connection;
                //cmd.ExecuteNonQuery();

                //get last inserted id
                Int32 newId = (Int32)cmd.ExecuteScalar();

                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "INSERT INTO Companies ([name],afm,doy,location,phone,idusers) VALUES (@name, @afm, @doy, @location, @phone, @idusers)";
                cmd1.CommandType = CommandType.Text;
                cmd1.Parameters.AddWithValue("@name", TextBox6.Text);
                cmd1.Parameters.AddWithValue("@afm", TextBox7.Text);
                cmd1.Parameters.AddWithValue("@doy", TextBox8.Text);
                cmd1.Parameters.AddWithValue("@location", TextBox9.Text);
                cmd1.Parameters.AddWithValue("@phone", TextBox10.Text);
                cmd1.Parameters.AddWithValue("@idusers", newId);
                cmd1.Connection = connection;
                cmd1.ExecuteNonQuery();
                connection.Close();
            }

            //show next form
            DivSignup.Visible = false;
            Label7.Text = "Επιτυχής Εγγραφή! Παρακαλώ συνεχίστε στην";
            login_div1.Visible = true;

        }

        else
        {
            Label6.Text = "Λάθος στοιχεία";
        }

    }
    }