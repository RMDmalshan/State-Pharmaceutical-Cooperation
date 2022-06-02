using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPCsystem
{
    public partial class PhamacyForm : System.Web.UI.Page
    {

        ServiceReferencePharmacy.WebServicePharmacySoapClient obj = new ServiceReferencePharmacy.WebServicePharmacySoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            String value = obj.registerPharmacy(txtPharmacyName.Text, txtRegNumber.Text, txtLocation.Text, txtNumber.Text, txtUsername.Text, txtPassword.Text);
            int norecord = Int32.Parse(value);

            if (norecord > 0)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Register successfull')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Unsuccessfull Try Again')", true);

            }

        }
    }
}