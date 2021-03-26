using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HigleyDBMSLab9
{
	public partial class WebForm3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void SerialTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void componentInsert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";
            try
            {
                
                                                                                                                   //            SqlDataSource2.InsertParameters["CityID"].DefaultValue = Request.QueryString["CITYID"];           // two page option
                                                                                                                   // Note - The customer ID is an auto generated identity field. It should not be included in the insert.
                SqlDataSource1.InsertParameters["SerialNumber"].DefaultValue = SerialTextBox.Text;
                SqlDataSource1.InsertParameters["ComponentID"].DefaultValue = DetailsView1.SelectedValue.ToString();
                SqlDataSource1.InsertParameters["SubstituteID"].DefaultValue = SubstituteTextBox.Text;
                SqlDataSource1.InsertParameters["Location"].DefaultValue = LocationTextBox.Text;
                SqlDataSource1.InsertParameters["Quantity"].DefaultValue = QuantityTextbox.Text;
                SqlDataSource1.InsertParameters["DateInstalled"].DefaultValue = DateInstalledTextBox.Text;
                SqlDataSource1.InsertParameters["EmployeeID"].DefaultValue = EmployeeIDTextBox.Text;

                SqlDataSource1.Insert();
                SerialTextBox.Text = "";
                ComponentIDTextBox.Text = DetailsView1.SelectedValue.ToString();
                SubstituteTextBox.Text = "";
                LocationTextBox.Text = "";
                QuantityTextbox.Text = "";
                DateInstalledTextBox.Text = "";
                EmployeeIDTextBox.Text = "";
            }
            catch (Exception ex)
            {
                ErrMessage1.Text = ex.Message;
            }

        }

        protected void PurchaseItemInsert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";
            try
            {

                  // single page option
                                                                                                                   //            SqlDataSource2.InsertParameters["CityID"].DefaultValue = Request.QueryString["CITYID"];           // two page option
                                                                                                                   // Note - The customer ID is an auto generated identity field. It should not be included in the insert.
                SqlDataSource2.InsertParameters["PurchaseID"].DefaultValue = purchaseIDtextbox.Text;
                SqlDataSource2.InsertParameters["ComponentID"].DefaultValue = DetailsView1.SelectedValue.ToString();
                SqlDataSource2.InsertParameters["PricePaid"].DefaultValue = pricePaidtextbox.Text;
                SqlDataSource2.InsertParameters["Quantity"].DefaultValue = quantity2textbox.Text;
                SqlDataSource2.InsertParameters["QuantityReceived"].DefaultValue = quantityRecTextbox.Text;


                SqlDataSource2.Insert();
                componentID_purchaseTextbox.Text = DetailsView1.SelectedValue.ToString();
                purchaseIDtextbox.Text = "";
                pricePaidtextbox.Text = "";
                quantity2textbox.Text = "";
                quantityRecTextbox.Text = "";




            }
            catch (Exception ex)
            {
                ErrMessage2.Text = ex.Message;
            }
        }
    }
}