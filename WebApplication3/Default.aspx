<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="WebApplication3.Welcome" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="myOverrideCss.css" type="text/css"/>
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> My Online Address Book  </h1>
        </div>
  
        <br />

        <div class="scroll-left">
            <p>Here you can find and edit the list of all the entries </p>
        </div>

        <br /> <br />

 <div>

     <!--   MAIN INFO TABLE  -->
    
    <table cellpadding="0" cellspacing="0" width="90%" border="0" height="100%">
        <tr><td width="10px"></td>
       
        <tr><td width="10px"></td>
        <td width="90%"  background="BackGround.jpg" align="left">
        <asp:Button CssClass="addButton" ID="btnSubmit" runat="server" Text="Add"
         OnClick="btnSubmit_Click" />  &nbsp; &nbsp; &nbsp; &nbsp;
       <asp:Button CssClass="addButton" ID="btnSearch"  runat="server" Text="Search" 
        OnClick="SearchEntry" />        &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                 &nbsp; &nbsp; &nbsp; &nbsp;
       
            <asp:Button CssClass="addButton" ID="BirthButton"  runat="server" Text="Upcoming Birthdays" 
        OnClick="btnBirth" />        &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                 &nbsp; &nbsp; &nbsp; &nbsp;


            <asp:Button CssClass="addButton" ID="SourceButton"  runat="server" Text="Source Code" 
        OnClick="btnSource" />        &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                 &nbsp; &nbsp; &nbsp; &nbsp;

             <asp:Label ID="lblShowTime" runat="server" Font-Size="16pt" Text="Date:" Font-Bold="true" ForeColor="#31B4A0"> 
             </asp:Label>
                    &nbsp; &nbsp;
             <asp:Label ID="lbltime" runat="server" Font-Size="16pt" ForeColor="#31B4A0"></asp:Label>
           </td></tr>
        <tr><td height="5px"></td></tr>
        <tr><td width="10px"></td>
             <td><table background="BackGround.jpg"  cellpadding="0" cellspacing="0"
              height="100%" border="0"  width="100%">
                   <tr><td height="25px"></td></tr>
                   <tr><td width="10px"></td>
                   <td align="center" >
    <asp:DataGrid ID="GridAllRecord" runat="server"  AutoGenerateColumns="false" Width="100%" DataKeyField="ID"
                                PagerStyle-HorizontalAlign="Center"  BorderStyle="ridge" GridLines="Both"
                                BorderWidth="2px" BorderColor ="white" BackColor="white" CellPadding="3" CellSpacing="1"
                                OnEditCommand="EditAddress"  OnDeleteCommand="AddressDelete"
                                OnItemCommand="Grid_ItemCommand" AllowSorting="true" PageSize=15
                                OnPageIndexChanged="GridAllRecord_PageIndexChanged"
                                AllowPaging="true">
                         <FooterStyle ForeColor="Black" BackColor="#C6C3C6"></FooterStyle>
                         <HeaderStyle Font-Bold="True" ForeColor="#FFFFFF" BackColor="#31B4A0"></HeaderStyle>
                         <FooterStyle BackColor="beige" />
                         <PagerStyle Font-Bold="true" Mode=NumericPages Font-Underline="true"/>
                         <Columns>
                           <asp:BoundColumn DataField=ID HeaderText="ID" Visible="false">
                             <ItemStyle BackColor="graytext" />
                             <HeaderStyle BackColor="graytext" />
                           </asp:BoundColumn>
                       
                             <asp:BoundColumn DataField=Title HeaderText="Title">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>   
  
                          
                             <asp:BoundColumn DataField=FirstName HeaderText="First Name">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>    

                           <asp:BoundColumn DataField=LastName HeaderText="Last Name">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>    
                             
                              <asp:BoundColumn DataField=Birthday HeaderText="Birthday Date">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn> 
                          
                           <asp:BoundColumn DataField=Email1 HeaderText="Primary Email">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>    
                             
                             <asp:BoundColumn DataField=Email2 HeaderText="Secondary Email">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>    
                          
                             <asp:BoundColumn DataField=Land_line HeaderText="Land Line">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>   

                           <asp:BoundColumn DataField=Mobile HeaderText="Mobile">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>   

                             <asp:BoundColumn DataField=Address1 HeaderText="First Address ">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>   

                             <asp:BoundColumn DataField=Address2 HeaderText="Second Address ">
                             <ItemStyle BackColor=GhostWhite />
                           </asp:BoundColumn>   
                             
                           <asp:ButtonColumn  CommandName="EditEntries" HeaderText="Edit Entries" Text="Edit">
                 </asp:ButtonColumn>      
                           <asp:ButtonColumn  CommandName="DeleteEntries" HeaderText="Delete Entries"
                                  Text="Delete"></asp:ButtonColumn>
                         </Columns>   
     </asp:DataGrid>
                    </td>
                  </tr>
                <tr><td height="25px"></td></tr>
              </table></td></tr>
           <tr><td height="15px"></td></tr>
         <%-- <tr><td width="10px"></td><td><asp:Label ID="lblTotalRegisterartion" runat="server" 
                   Text="Total Registered Address :"></asp:Label><asp:Label ID="lblRegistered"    
                                                 runat="server"></asp:Label></td></tr>--%>
       </table>   
    </div>


        
     <!--   BIRTHDAY TABLE  -->


      


    </form>
</body>
</html>
