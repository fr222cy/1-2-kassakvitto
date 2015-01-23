using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_2_kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReceiptDiv.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double subtotal = double.Parse(TextBox1.Text);
            Model.Receipt Receipt = new Model.Receipt(subtotal);
            Receipt.Calculate(subtotal);

            totalLabel.Text = String.Format("{0:c}",Receipt.Subtotal);
            DiscountRateLabel.Text = String.Format("{0:p}",Receipt.DiscountRate);
            DiscountLabel.Text = String.Format("{0:c}",Receipt.MoneyOff);
            PayLabel.Text = String.Format("{0:c}",Receipt.Total);
            ReceiptDiv.Visible = true;
        }
    }
}