using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuthenticationWebAppASP
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["_uname"] != null)
            {
                Label1.Text = "Welcome " + Session["_uname"].ToString();
            } else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}