using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPCsystem
{
    public partial class SearchAndOrderDrugWebForm : System.Web.UI.Page
    {

        ServiceReferencePharmacy.WebServicePharmacySoapClient obj = new ServiceReferencePharmacy.WebServicePharmacySoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void txtSearch_Click(object sender, EventArgs e)
        {
            dlStock.DataSource = obj.searchDrug(txtDrugName.Text);
            dlStock.DataBind();
        }



        protected void btnOrder_Click(object sender, EventArgs e)
        {
            String value = obj.orderDetails(txtDrugName.Text, txtID.Text, txtQuantity.Text, txtPharmacyID.Text, txtEmail.Text, txtNote.Text);
            int norecord = Int32.Parse(value);

            if (norecord > 0)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Ordered successfull')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Unsuccessfull Try Again')", true);

            }
        }
    }
}