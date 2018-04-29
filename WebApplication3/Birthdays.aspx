<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Birthdays.aspx.cs" Inherits="WebApplication3.Birthdays" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="myOverrideCss.css" type="text/css"/>
     <br />
    <title>Birthdays</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <h1> Today's and Upcoming Birthdays of this Month </h1>
        </div>
         <br /><br /><br />
        <div>

             <tr><td> &nbsp;&nbsp; &nbsp; &nbsp;
        <div align="center">
            
                <asp:Button runat="server" CssClass="addButton" Height="20px" Width="100px" Text="home" OnClick="Unnamed1_Click" />
        </div>          
        
    </td></tr>
             <br /><br />
            <table cellpadding="0" cellspacing="0" border="0" width="70%" align="center">
        <tr><td height="5px"></td></tr>
        <tr><td>
              <asp:DataGrid ID="GridAllRecord" runat="server" AutoGenerateColumns="false" Width="100%" DataKeyField="ID"
                    BorderStyle="ridge" GridLines="Both" BorderWidth="2px" BorderColor ="white"  BackColor="white" CellPadding="0"
                  AllowSorting="true"  PagerStyle-
                        HorizontalAlign="Center"  PageSize=5 AllowPaging="true">
              <FooterStyle ForeColor="Black" BackColor="#C6C3C6"></FooterStyle>
              <HeaderStyle Font-Bold="True" ForeColor="#FFFFFF" BackColor="#26A893"></HeaderStyle>
              <FooterStyle BackColor="beige" />
              <PagerStyle Font-Bold="true" Mode=NumericPages Font-Underline="true"/>
              <Columns>
                <asp:BoundColumn DataField=ID HeaderText="ID" Visible="false">
                  <ItemStyle BackColor="graytext" />
                  <HeaderStyle BackColor="graytext" />
                </asp:BoundColumn>
                  <asp:BoundColumn DataField=FirstName HeaderText="First Name">
                  <ItemStyle BackColor=GhostWhite />
                    </asp:BoundColumn>         
                <asp:BoundColumn DataField=LastName HeaderText="Last Name">
                  <ItemStyle BackColor=GhostWhite />
                    </asp:BoundColumn>               
                <asp:BoundColumn DataField=Birthday HeaderText="Birthday">
                  <ItemStyle BackColor=GhostWhite />
                </asp:BoundColumn>                               
          </Columns>   
      </asp:DataGrid>
    </td></tr></table>
        </div>
          
    </form>
</body>
</html>
