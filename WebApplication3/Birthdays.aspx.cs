using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class Birthdays : System.Web.UI.Page
    {
        string cs = "Data Source=SQL6001.site4now.net;Initial Catalog=DB_A3A6B6_Addresses;User Id=DB_A3A6B6_Addresses_admin;Password=sepersontria13!!;";
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                rebind();
            }

        }

        public void rebind()
        {
            con = new SqlConnection(cs);
            cmd.CommandText = "select ID,FirstName,LastName, CONVERT(varchar, Birthday,101)  As Birthday from MainInfo where DAY(Birthday) = DAY(GETDATE())  and MONTH(Birthday) = MONTH(GETDATE())  or DAY(Birthday) = DAY(GETDATE()+1)  and MONTH(Birthday) = MONTH(GETDATE())  or DAY(Birthday) = DAY(GETDATE()+2)  and MONTH(Birthday) = MONTH(GETDATE())  or DAY(Birthday) = DAY(GETDATE()+3)  and MONTH(Birthday) = MONTH(GETDATE())  or DAY(Birthday) = DAY(GETDATE()+4)  and MONTH(Birthday) = MONTH(GETDATE())  or DAY(Birthday) = DAY(GETDATE()+5)  and MONTH(Birthday) = MONTH(GETDATE()) ;";
            da = new SqlDataAdapter(cmd);
            cmd.Connection = con;
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridAllRecord.DataSource = ds;
            GridAllRecord.DataBind();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.Aspx");
        }
    }
}