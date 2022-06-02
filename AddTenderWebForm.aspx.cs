using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPCsystem
{
    public partial class AddTenderWebForm : System.Web.UI.Page
    {

        ServiceReferenceSupplier.WebServiceSuppliersSoapClient obj = new ServiceReferenceSupplier.WebServiceSuppliersSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddTender_Click(object sender, EventArgs e)
        {

            String value = obj.addTender(txtDrugName.Text, txtID.Text, txtQuntity.Text, txtDOM.Text, txtED.Text, txtPrice.Text, txtNote.Text);
            int norecord = Int32.Parse(value);

            if (norecord > 0)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Tender Added successfull')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Unsuccessfull Try Again')", true);

            }


        }
    }
}