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
    public partial class Search : System.Web.UI.Page
    {
        string cs = "Data Source=SQL6001.site4now.net;Initial Catalog=DB_A3A6B6_Addresses;User Id=DB_A3A6B6_Addresses_admin;Password=sepersontria13!!;";
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string commandSearch;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFirstNameSearch_click(object sender, EventArgs e)
        {
            if(txtFirstNameSearch.Text == "")
            {
                lblError.Text = "Please enter a valid name";
                lblName.ForeColor = System.Drawing.Color.Red;
            }

            else
            {
                commandSearch = "Select * from MainInfo where FirstName=" +"'" + txtFirstNameSearch.Text + "'";
                showSearchRecord();
            }
        }

        protected void btnLastNameSearch_Click(object sender, EventArgs e)
        {
            if (txtLastNameSearch.Text == "")
            {
                lblError.Text = "Please enter a valid Last Name";
                lblLastName.ForeColor = System.Drawing.Color.Red;
            }

            else
            {
                commandSearch = "Select * from MainInfo where LastName=" + "'" + txtLastNameSearch.Text + "'";
                showSearchRecord();
            }
        }

        public void showSearchRecord()
        {
            con = new SqlConnection(cs);
            cmd.CommandText = commandSearch;
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblError.Text = "";
                GridAllRecord.DataSource = ds;
                GridAllRecord.DataBind();
            }

            else
            {
                lblError.Text = "Entry not found.";
                GridAllRecord.DataSource = ds;
                GridAllRecord.DataBind();
            }
        }

        protected void Grid_ItemCommand(object source, DataGridCommandEventArgs e)
        {
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}