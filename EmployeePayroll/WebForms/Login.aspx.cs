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
    public partial class Login : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["MyDbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand com = new SqlCommand("sp_Login", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Email", TextBox1.Text);
                com.Parameters.AddWithValue("@Password", TextBox2.Text);
                con.Open();
                var datareader = com.ExecuteReader();
                //SqlDataAdapter adapter = new SqlDataAdapter(com);
                //DataSet dataSet = new DataSet();
                //adapter.Fill(dataSet, "employee_webform");
                if (datareader.HasRows)
                {
                    Application["dataset"] = datareader;
                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
                con.Close();
            }
            catch (InvalidExpressionException ex)
            {
                Response.Redirect("Error.aspx");
                throw ex;
            }
        }
    }
}