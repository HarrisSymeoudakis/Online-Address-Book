<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplication3.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="myOverrideCss.css" type="text/css"/>
    <title>Edit</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <br /><br /><br />
   <table cellpadding="0" cellspacing="0" width="90%" border="0" align=center>
        <tr><td>
  <table cellpadding="0" cellspacing="0" width="80%" align="center" 
  border="4" background=BackGround.jpg>
  <tr>
  <td align="center">
   </td></tr>  
   <tr><td>&nbsp;</td></tr>
     <tr><td><marquee> <asp:Label ID="lblPersonnelInformation" runat="server" 
      Text="Fill in, the fields below to update the user's info." Font-Bold="True" ForeColor= "#31B4A0" > 
      </asp:Label> </marque
         </td></tr>
              
               <tr><td align="center" style="height: 233px">
                    <table cellpadding="0" cellspacing="0" width="80%" border="0">
                      <tr><td align="center">
                        <table>                         
        
    <tr>
    <td align="left">
        <asp:Label ID="lblFirstNmae" Text="*First Name" runat="server" Width="100px"
          ForeColor="#31B4A0"> </asp:Label>
            <asp:TextBox placeholder="John" ID="txtFirstName" runat="server"> </asp:TextBox>
   </td>
   </tr>


<tr>
<td align="left">
 <asp:Label ID="lblLastName" Text="*Last Name" runat="server" Width="100px"
             ForeColor="#31B4A0">
  </asp:Label>
  <asp:TextBox placeholder="Doe" ID="txtLastName" runat="server"></asp:TextBox>


                             <tr><td align="left">
 <asp:Label ID="lblPersonelEmail" Text="Primary Email" runat="server" Width="100px" ForeColor="#31B4A0">  </asp:Label>
 <asp:TextBox placeholder="example@domain.com" ID="txtPersonnelEmail" runat="server"></asp:TextBox>
 </td></tr>     
     
     <tr><td align="left">
 <asp:Label ID="lblSecondEmail" Text="Secondary Email" runat="server" Width="100px" ForeColor="#31B4A0">  </asp:Label>
 <asp:TextBox ID="txtSecondEmail" runat="server"></asp:TextBox>
 </td></tr>    

   <tr><td align="left"> 
   <asp:Label ID="lblHomePhone" Text="Land Line" runat="server" Width="100px" ForeColor="#31B4A0">
    </asp:Label>
     <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
     </td></tr>      
                       
 <tr><td align="left">
 <asp:Label ID="lblMobile" Text="Mobile" runat="server" Width="100px"
                                   ForeColor="#31B4A0"> </asp:Label>
       <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
 </td></tr>                           


 <tr><td align="left">
 <asp:Label ID="lblAddress1" Text="Primary Address" runat="server" Width="100px"
                                   ForeColor="#31B4A0"> </asp:Label>
       <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
 </td></tr>     

                             <tr><td align="left">
 <asp:Label ID="Label1" Text="Secondary Address" runat="server" Width="100px"
                                   ForeColor="#31B4A0"> </asp:Label>
       <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
 </td></tr>     

                             <tr><td align="left">
 <asp:Label ID="BirthLabel" Text="Birthday" runat="server" Width="100px"
                                   ForeColor="#31B4A0"> </asp:Label>
       <asp:TextBox ID="txtBirthM" placeholder="mm" runat="server" Width="84px"></asp:TextBox>
                                  <asp:TextBox placeholder="dd" ID="txtBirthD" runat="server" Width="84px"></asp:TextBox>
                                  <asp:TextBox placeholder="yyyy" ID="txtBirthY" runat="server" Width="84px"></asp:TextBox>
 </td></tr>     

   </table>
   </td>

 </tr>
 </table></td></tr>
                       

                        
   </td></tr>    
        
   <tr><td align="center" style="height: 52px">
   <asp:Button ID="btnSubmitRecord"
    runat="server" Text="Submit" CssClass="addButton"
     Height="40px" OnClick="btnSubmit_Click" Width="200px"/>

                       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       <asp:Button runat="server" CssClass="addButton" Height="40px" Width="200px" Text="home" OnClick="Unnamed1_Click" />
             </td></tr>
           </table> 
        </div>
    </form>
</body>
</html>
