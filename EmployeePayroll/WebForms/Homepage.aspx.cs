using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                GridView2.DataSource = Application["dataset"];
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeePayroll.aspx");
        }

        protected void ImageButton1_Click(object sender, EventArgs e)
        {
        }
    }
}