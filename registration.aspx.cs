using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        FileUpload fu = (FileUpload)(DetailsView1.FindControl("artFileUpload"));
        if(fu.HasFile==true)
        {
            e.Values["artUpload"] = fu.FileName;
            fu.SaveAs(Server.MapPath("~/artImages/" + fu.FileName));
            lblResponse.Text = "<h1>Thank You for registering to participate!</h1>";
        }
    }
}