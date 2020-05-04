using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace AuthenticationWebAppASP
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected string connect;
        private SqlConnection sqlCon;
        private SqlCommand sqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            sqlCon = new SqlConnection(connect);
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            sqlCon.Open();
            string _name = nameL.Text;
            string _pass = passL.Text;
            string query = "SELECT count(*) FROM tblUsers WHERE username='" + _name + "' AND password='" + _pass + "'";
            sqlCmd = new SqlCommand(query, sqlCon);
            int val = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (val == 1)
            {
                sqlCon.Close();
                Session_Create();
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                sqlCon.Close();
                errShow.Text = "Invalid login";
            }
        }
        protected void Session_Create()
        {
            Session.Clear();
            string _name = nameL.Text;
            if (_name != "")
            {
                Session["_uname"] = _name;
            }
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}