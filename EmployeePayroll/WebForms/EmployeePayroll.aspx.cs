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
    public partial class EmployeePayroll : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["MyDbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlCommand com = new SqlCommand("sp_Addemployee", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@profileimage", RadioButtonList2.SelectedValue);
            com.Parameters.AddWithValue("@Name", TextBox2.Text);
            com.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
            string checklist = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (checklist == "")
                    {
                        checklist = CheckBoxList1.Items[i].Value;
                    }
                    else
                    {
                        checklist += "   " + CheckBoxList1.Items[i].Value;
                    }
                }
            }
            com.Parameters.AddWithValue("@department", checklist);
            com.Parameters.AddWithValue("@salary", DropDownList1.SelectedValue);
            com.Parameters.AddWithValue("@Notes", TextBox1.Text);
            con.Open();
            var datareader = com.ExecuteReader();
            if (datareader != null)
            {
                Application["dataset"] = datareader;
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
            con.Close();
        }
    }
}