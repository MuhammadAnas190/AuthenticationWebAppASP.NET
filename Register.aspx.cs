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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected string connect;
        private SqlConnection sqlCon;
        private SqlCommand sqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            sqlCon = new SqlConnection(connect);
        }
        protected void registerBtn_Click(object sender, EventArgs e)
        {
            sqlCon.Open();
            string _name = name.Text;
            string _pass = pass.Text;
            string query = "INSERT INTO tblUsers (username, password) VALUES ('" + _name + "', '" + _pass + "' ); ";
            sqlCmd = new SqlCommand(query, sqlCon);
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Response.Redirect("Default.aspx");
        }
    }
}