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
    public partial class Welcome : System.Web.UI.Page
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
                string Time = DateTime.Now.Date.ToShortDateString();
                lbltime.Text = Time;
            }
        }

        public void rebind()
        {
            con = new SqlConnection(cs);
            cmd.CommandText = "select ID, Title,FirstName,LastName, CONVERT(varchar, Birthday,101)  As Birthday ,Email1,Email2,Land_line,mobile,Address1,Address2 from MainInfo";
            da = new SqlDataAdapter(cmd);
            cmd.Connection = con;
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridAllRecord.DataSource = ds;
            GridAllRecord.DataBind();
        }

        protected void btnNewAddress_Click(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void SearchEntry(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }

        protected void Grid_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if(e.CommandName == "EditEntries")
            {
                int UpdateAddress = int.Parse(e.Item.Cells[0].Text);
                Session["UpdateAddressID"] = UpdateAddress;
                Response.Redirect("Edit.aspx");
            }

            if(e.CommandName == "DeleteEntries")
            {
                con = new SqlConnection(cs);
                int UpdateAddress = int.Parse(e.Item.Cells[0].Text);
                cmd.CommandText = "delete from MainInfo where ID="+UpdateAddress;
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                GridAllRecord.EditItemIndex = -1;
                rebind();
            }
        }

        protected void GridAllRecord_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            GridAllRecord.CurrentPageIndex = e.NewPageIndex;
            rebind();
        }

        protected void EditAddress(object source, DataGridCommandEventArgs e)
        {
            int UpdateAddress = int.Parse(e.Item.Cells[0].Text);
            Session["UpdateAddressID"] = UpdateAddress;
            Response.Redirect("Edit.aspx");
        }

        protected void AddressDelete(object source, DataGridCommandEventArgs e)
        {
            con = new SqlConnection(cs);
            int UpdateAddress = int.Parse(e.Item.Cells[0].Text);
            cmd.CommandText = "delete from MainInfo where ID=" + UpdateAddress;
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridAllRecord.EditItemIndex = -1;
            rebind();
        }

        protected void btnBirth(object sender, EventArgs e)
        {
            Response.Redirect("Birthdays.aspx");
        }

        protected void btnSource(object sender, EventArgs e)
        {

        }
    }
}