using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class signup : System.Web.UI.Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["MyDbconnection"].ConnectionString;
        //create new sqlconnection and connection to database by using connection string from web.config file  
        SqlConnection con = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                passwordTextBox.TextMode = TextBoxMode.SingleLine;

            }
            else
            {
                passwordTextBox.TextMode = TextBoxMode.Password;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (con)
                {
                    SqlCommand com = new SqlCommand("sp_Register", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@FirstName", firstNameTextBox.Text);
                    com.Parameters.AddWithValue("@LastName", lastNameTextBox.Text);
                    com.Parameters.AddWithValue("@Email", emailTextBox.Text);
                    com.Parameters.AddWithValue("@Password", passwordTextBox.Text);
                    //com.Parameters.AddWithValue("@MobileNumber", mobileNumberTextBox.Text);
                    con.Open();
                    var result = com.ExecuteNonQuery();
                    Response.Redirect("Login");
                }
            }
            catch (Exception)
            {

                throw;
            }
            
        }
    }
}