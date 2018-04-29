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
    public partial class Register : System.Web.UI.Page
    {
        string cs = "Data Source=SQL6001.site4now.net;Initial Catalog=DB_A3A6B6_Addresses;User Id=DB_A3A6B6_Addresses_admin;Password=sepersontria13!!;";
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtFirstName.Text != "" && txtLastName.Text != "")
            {
                InsertRecord();
                txtFirstName.Text = "";
                txtLastName.Text = "";

                //txtBirthday.Text = "";
                txtPersonnelEmail.Text = "";
                txtSecondEmail.Text = "";
                txtHomePhone.Text = "";
                txtMobile.Text = "";
                txtAddress1.Text = "";
                txtAddress2.Text = "";
            }

            else
            {
                lblRecordAdded.Visible = true;
                lblRecordAdded.Text = "Please fill in, all the necessary (*) fields";
                lblFirstNmae.ForeColor = System.Drawing.Color.Red;
                lblLastName.ForeColor = System.Drawing.Color.Red;
            }
        }

        public void InsertRecord()
        {
            con = new SqlConnection(cs);
            cmd.CommandText = "insert into MainInfo(Title, FirstName, LastName, Birthday, Email1, Email2, land_line, mobile, Address1, Address2) values ('"+listTitle.Text+"','"+txtFirstName.Text+"','"+txtLastName.Text+"','"+txtBirthY.Text+txtBirthM.Text+txtBirthD.Text+"','"+ txtPersonnelEmail.Text+ "','"+txtSecondEmail.Text+"','"+txtHomePhone.Text+"','"+txtMobile.Text+"','"+txtAddress1.Text+"','"+txtAddress2.Text+"')";
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblRecordAdded.Visible = true;
            lblRecordAdded.Text = "Your entry has been registered succesfully.";
            lblRecordAdded.ForeColor = System.Drawing.Color.LightSeaGreen;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }

    }
}