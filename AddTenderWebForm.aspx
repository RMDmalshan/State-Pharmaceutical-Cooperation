<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTenderWebForm.aspx.cs" Inherits="SPCsystem.AddTenderWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>State Pharmaceutical Cooperation</title>
    <link rel ="stylesheet" href="SupplierRegisterSheet.css" />
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



            
            <div class="all">
      <div class="container">
      <center><div class="title">Add Tender</div></center>
          <div class="user-details">
          <div class="input-box">
              <span class="details">Drug Name</span>
              <asp:TextBox ID="txtDrugName" runat="server" type="text"  placeholder="Enter Drug Name"></asp:TextBox>
              </div>
          <div class="input-box">
              <span class="details">ID</span>
              <asp:TextBox ID="txtID" runat="server" type="text"  placeholder="Enter ID"></asp:TextBox>
         </div>
              <div class="input-box">
              <span class="details">Quantity</span>
              <asp:TextBox ID="txtQuntity" runat="server" type="text"  placeholder="Enter Quantity"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Date Of Manufacture </span>
             <asp:TextBox ID="txtDOM" runat="server" type="text"  placeholder="Enter DOM"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Expiration Date</span>
             <asp:TextBox ID="txtED" runat="server" type="text"  placeholder="Enter Expiration Date"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Price</span>
             <asp:TextBox ID="txtPrice" runat="server" type="text"  placeholder="Enter Password"></asp:TextBox>
        </div>
              <div class="input-box">
             <span class="details">Additional Note</span>
             <asp:TextBox ID="txtNote" runat="server" type="text"  placeholder="Enter Additional Note" TextMode="MultiLine" Height="102px" Width="347px"></asp:TextBox>
        </div>
             
            
        
          <table>
              <tr>
                  <td> <asp:Button ID="btnAddTender" runat="server" Text="Submit Tender" Width="698px" Font-Bold="True" Font-Size="20pt" ForeColor="Red" OnClick="btnAddTender_Click"  /></td>

              </tr>
          </table>
        </div>
    </div>
  </div>

            </form>

    </body>
</html>
