<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchAndOrderDrugWebForm.aspx.cs" Inherits="SPCsystem.SearchAndOrderDrugWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>State Pharmaceutical Cooperation </title>
    <link rel ="stylesheet" href="SeachOrderDrugStyle.css" />

</head>
</head>
<body>


       <form id="form1" runat="server">

  
        <header>

             <div class="nav">
            <nav>
                <a class="active" href="HomePage.aspx"> About Us</a>
                <a class="active" href="PharmacyLoginForm.aspx"> Pharmacies</a>
                <a class="active" href="SupplierLoginForm.aspx"> Supplies</a>
                <a class="active" href="StaffLoginForm.aspx"> Staff</a>
                <a class="active" href="HomePage.aspx">Home</a></nav>
            </div>

        </header>




           <div class="all">
      <div class="container">
      <center><div class="title">Order Drug</div></center>
          <div class="user-details">
          <div class="input-box">
              <span class="details">Drug Name</span>
              <asp:TextBox ID="txtDrugName" runat="server" type="text"  placeholder="Enter Drug Name"></asp:TextBox>
              </div>
          <div class="input-box">
              <span class="details">Click To Search Drug</span>
              <asp:Button ID="txtSearch" runat="server" Text="Search" OnClick="txtSearch_Click" />
              <asp:GridView ID="dlStock" runat="server"></asp:GridView>
         </div>
              <div class="input-box">
              <span class="details">Drug ID</span>
              <asp:TextBox ID="txtID" runat="server" type="text"  placeholder="Enter Drug ID"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Quantity</span>
             <asp:TextBox ID="txtQuantity" runat="server" type="text"  placeholder="Enter Quantity"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Pharmacy ID</span>
             <asp:TextBox ID="txtPharmacyID" runat="server" type="text"  placeholder="Enter Pharmacy ID"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Email</span>
             <asp:TextBox ID="txtEmail" runat="server" type="text"  placeholder="Enter Email"></asp:TextBox>
        </div>
               <div class="input-box">
             <span class="details">Additional Note</span>
             <asp:TextBox ID="txtNote" runat="server" type="text"  placeholder="Enter Note if you want" TextMode="MultiLine" Height="108px" Width="279px"></asp:TextBox>
         </div>
           
        
          <table>
              <tr>
                  <td> <asp:Button ID="btnOrder" runat="server" Text="Order" Width="698px" Font-Bold="True" Font-Size="20pt" ForeColor="Red" OnClick="btnOrder_Click"  /></td>

              </tr>
          </table>
        </div>
    </div>
  </div>
    
    </form>
   
</body>
</html>
