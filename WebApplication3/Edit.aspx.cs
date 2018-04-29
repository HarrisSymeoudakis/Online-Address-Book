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
    public partial class Edit : System.Web.UI.Page
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
                record4update();
            }
        }

        public void record4update()
        {
            da = new SqlDataAdapter();
            int IDUpdate = int.Parse(Session["UpdateAddressID"].ToString());
            con = new SqlConnection(cs);
            cmd.CommandText = "Select * from MainInfo where ID="+IDUpdate;
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            

            txtFirstName.Text = ds.Tables[0].Rows[0][2].ToString();
            txtLastName.Text = ds.Tables[0].Rows[0][3].ToString();
            txtPersonnelEmail.Text = ds.Tables[0].Rows[0][5].ToString();
            txtSecondEmail.Text = ds.Tables[0].Rows[0][6].ToString();
            txtHomePhone.Text = ds.Tables[0].Rows[0][7].ToString();
            txtMobile.Text = ds.Tables[0].Rows[0][8].ToString();
            txtAddress1.Text = ds.Tables[0].Rows[0][9].ToString();
            txtAddress2.Text = ds.Tables[0].Rows[0][10].ToString();

            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int IDUpdate = int.Parse(Session["UpdateAddressID"].ToString());
            con = new SqlConnection(cs);
            cmd.CommandText = "Update MainInfo set FirstName='"+txtFirstName.Text+"', LastName='"+txtLastName.Text + "',Birthday='"+ txtBirthY.Text + txtBirthM.Text + txtBirthD.Text+"',Email1='"+txtPersonnelEmail.Text + "',Email2='"+txtSecondEmail.Text + "',land_line='"+txtHomePhone.Text + "',mobile='"+txtMobile.Text + "',Address1='"+txtAddress1.Text + "',Address2='"+txtAddress2.Text + "'Where ID ="+IDUpdate;

            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}