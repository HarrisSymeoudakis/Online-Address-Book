<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
   

<head runat="server">
      <link rel="stylesheet" href="myOverrideCss.css" type="text/css"/>

  
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '214065405849789',
      cookie     : true,
      xfbml      : true,
      version    : 'v2.12'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    
FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
    });

    
function checkLoginState() {
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
}

</script>

    <title>Login</title>
</head>
<body>

    <script src="https://connect.facebook.net/en_US/all.js" type="text/javascript"></script>

    <form id="form1" runat="server">
        <div>
            <h1>Welcome to My Online Address Book  </h1>
        </div>

        <div style="margin: auto;
    width: 50%;
    padding: 10px;">

            Username:
            <asp:TextBox ID="TextUser" runat="server"></asp:TextBox>
             
        </div>
        <div align="center">
           <asp:Label ID="errorLbl" runat="server" Text="Invalid Credentials! Please Try Again" ForeColor="Red" Visible="false" />
        </div>
        <div style="margin: auto;
    width: 50%;
    padding: 10px;">

            Password:
            <asp:TextBox ID="TextPass" TextMode="Password" runat="server"></asp:TextBox>

        </div>



         <asp:CheckBox ID="Persist" runat="server" Visible="false"/>
        <div style="margin: auto;
    width: 50%;
    padding: 10px;">
            <asp:Button BackColor="#31B4A0" ForeColor="GhostWhite" Height="40px" Width="70px"  runat="server" Text="Login" OnClick="Unnamed1_Click"/>
            
    <fb:login-button 
  scope="public_profile,email"
       
  onlogin="checkLoginState();">
        Login with facebook
</fb:login-button>
        </div>

        

       

        

    </form>


</body>
</html>
