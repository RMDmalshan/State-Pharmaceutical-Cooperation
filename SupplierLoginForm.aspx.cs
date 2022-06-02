using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SPCsystem
{
    public partial class SupplierLoginForm : System.Web.UI.Page
    {

        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                sqlCon = new SqlConnection("data source =LAPTOP-KKDP9OQK; initial catalog=SPC; Integrated Security=True;");
                sqlCon.Open();

            }
            catch
            {
               

            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection();

            string supplierLogin = "select count(*) from RegisterSupplier where Username='" + txtUsername.Text + "'";
            SqlCommand com = new SqlCommand(supplierLogin, sqlCon);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            sqlCon.Close();
            if (temp == 1)
            {
                sqlCon.Open();
                String checkpasswordMatch = "select password from RegisterSupplier where Password='" + txtPassword.Text + "'";
                SqlCommand passComm = new SqlCommand(checkpasswordMatch, sqlCon);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtPassword.Text)
                {
                    
                    Response.Redirect("AddTenderWebForm.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('incorrect username')", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('incorrect password')", true);
            }




        }
    }
}