using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SPCsystem
{
    public partial class SupplierRegisterForm : System.Web.UI.Page
    {

        ServiceReferenceSupplier.WebServiceSuppliersSoapClient obj = new ServiceReferenceSupplier.WebServiceSuppliersSoapClient();


        protected void Page_Load(object sender, EventArgs e)
        {




        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            String value = obj.registerSupplier(txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtAddress.Text, txtNumber.Text,   txtNIC.Text, txtUsername.Text, txtPassword.Text);
            int norecord = Int32.Parse(value);

            if (norecord > 0)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Supplier Register successfull')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Unsuccessfull Try Again')", true);

            }


        }
    }

}
