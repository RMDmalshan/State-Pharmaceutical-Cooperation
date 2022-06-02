using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPCsystem
{
    public partial class StaffForm1 : System.Web.UI.Page
    {
        

        ServiceReferenceStaff.WebServiceStaffSoapClient obj = new ServiceReferenceStaff.WebServiceStaffSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {

            


        }




        protected void btnAdd_Click(object sender, EventArgs e)
        {

            String value = obj.insertStock(txtStockID.Text, txtStockName.Text, txtDOM.Text, txtED.Text, txtPrice.Text, txtQuantity.Text);
            int norecord = Int32.Parse(value);

            if (norecord > 0)
            {
               
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Unsuccessfull Try Again')", true);

            }
        }




        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtStockID.Text = "";
            txtStockName.Text = "";
            txtDOM.Text = "";
            txtED.Text = "";
            txtPrice.Text = "";
            txtQuantity.Text = "";
        }




        protected void btnSearch_Click(object sender, EventArgs e)
        {

            dlStock.DataSource = obj.searchStock(txtStockID.Text);
            dlStock.DataBind();

        }




        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            obj.updateStock(txtStockID.Text, Convert.ToInt32(txtQuantity.Text));

            dlStock.DataSource = obj.searchStock(txtStockID.Text);
            dlStock.DataBind();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Record Updated')", true);


        }
    }
}