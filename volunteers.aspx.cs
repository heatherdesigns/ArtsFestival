using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class volunteers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] shirts =
        {
            "Small",
            "Medium",
            "Large",
            "XL",
            "2XL"
        };

        for (int i = 0; i < shirts.GetLength(0); i++)
        {
            ListBox1.Items.Add(new ListItem(shirts[i]));
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        getInfo();
        clearTexts();
    }

    private void getInfo()
    {
        lblResults.Text = "Name: " + txtName.Text +
            "</br>Address: " + txtAddress.Text +
            "</br>City: " + txtCity.Text +
            "</br>State: " + txtState.Text +
            "</br>Zip Code: " + txtZip.Text +
            "</br>Phone: " + txtPhone.Text +
            "</br>Email: " + txtEmail.Text;

        lblSize.Text = "Shirt size: " + ListBox1.SelectedItem;
        lblVolThanks.Text = "Thank you for volunteering to help at the 2016 Arts Festival!</br>";
    }

    private void clearTexts()
    {
        txtName.Text = "";
        txtAddress.Text = "";
        txtCity.Text = "";
        txtState.Text = "";
        txtZip.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
        return;
    }
}