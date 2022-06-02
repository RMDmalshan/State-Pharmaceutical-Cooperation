using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPCsystem
{
    public partial class PharmacyLoginForm : System.Web.UI.Page
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

            string PharmacyLogin = "select count(*) from register_pharmacy where username='" + txtUsername.Text + "'";
            SqlCommand com = new SqlCommand(PharmacyLogin, sqlCon);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            sqlCon.Close();
            if (temp == 1)
            {
                sqlCon.Open();
                String checkpasswordMatch = "select password from register_pharmacy where password='" + txtPassword.Text + "'";
                SqlCommand passComm = new SqlCommand(checkpasswordMatch, sqlCon);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtPassword.Text)
                {
                    
                    Response.Redirect("SearchAndOrderDrugWebForm.aspx");
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