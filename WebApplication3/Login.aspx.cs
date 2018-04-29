using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if ((TextUser.Text == "harris") &&
            (TextPass.Text == "1234"))
            {
                FormsAuthentication.RedirectFromLoginPage
                   (TextUser.Text, Persist.Checked);
            }
            else
            {
                errorLbl.Visible = true;
                TextUser.BorderColor = System.Drawing.Color.Red;
                TextPass.BorderColor = System.Drawing.Color.Red;
            }
        }
        
    }
}