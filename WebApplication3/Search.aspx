<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication3.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="myOverrideCss.css" type="text/css"/>
    <title>Search</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <br /><br /><br />
<table cellpadding="0" cellspacing="0" width="70%" border="4" background="BackGround.jpg" align="center">
  
      <tr><td> &nbsp;&nbsp; &nbsp; &nbsp;
        <div align="center">
             <asp:Button runat="server" CssClass="addButton" Height="20px" Width="100px" Text="home" OnClick="Unnamed1_Click" />
                
        </div>          
        
    </td></tr>
        <tr><td>&nbsp;&nbsp;<asp:Label ID="lblSearch" runat="server"  Text="Search By:" Font-Bold="true"
                    ForeColor="#31B4A0">    </asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label></td></tr>
        
        
        <tr><td height="5px"></td></tr>
        <tr><td> &nbsp;&nbsp; &nbsp; &nbsp;
                <asp:Label ID="lblName" runat="server" Text="First Name" ForeColor="#31B4A0" Width="120px"></asp:Label>
                  &nbsp;&nbsp;
                         <asp:TextBox ID="txtFirstNameSearch" placeholder="John" runat="server"></asp:TextBox>&nbsp; &nbsp;&nbsp; &nbsp;
                   &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                 <asp:Button ID="btnNameSearch" CssClass="addButton" runat="server" Text="Search" OnClick="btnFirstNameSearch_click" />
            </td></tr>
       
    <tr><td> &nbsp;&nbsp; &nbsp; &nbsp;
                <asp:Label ID="lblLastName" ForeColor="#31B4A0" runat="server" Text="Last Name" Width="120px"></asp:Label>
                  &nbsp;&nbsp;
                         <asp:TextBox ID="txtLastNameSearch" placeholder="Doe" runat="server"></asp:TextBox>&nbsp; &nbsp;&nbsp; &nbsp;
                   &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                 <asp:Button ID="btnLastNameSearch" CssClass="addButton" runat="server" Text="Search" OnClick="btnLastNameSearch_Click" />
            </td></tr>

   


        <tr><td> &nbsp;</td></tr>  

      </table>
      <table cellpadding="0" cellspacing="0" border="0" width="70%" align="center">
        <tr><td height="5px"></td></tr>
        <tr><td>
              <asp:DataGrid ID="GridAllRecord" runat="server" AutoGenerateColumns="false" Width="100%" DataKeyField="ID"
                    BorderStyle="ridge" GridLines="Both" BorderWidth="2px" BorderColor ="white"  BackColor="white" CellPadding="0"
                   OnItemCommand="Grid_ItemCommand" AllowSorting="true"  PagerStyle-
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
                <asp:BoundColumn DataField=Email1 HeaderText="Email">
                  <ItemStyle BackColor=GhostWhite />
                </asp:BoundColumn>         
                <asp:BoundColumn DataField=mobile HeaderText="Mobile">
              <ItemStyle BackColor=GhostWhite />
            </asp:BoundColumn>                               
          </Columns>   
      </asp:DataGrid>
    </td></tr></table>

             

        </div>
           

    </form>
</body>
</html>
