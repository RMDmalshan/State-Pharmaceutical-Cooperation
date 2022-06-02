<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhamacyRegisterForm.aspx.cs" Inherits="SPCsystem.PhamacyForm" %>

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
      <center><div class="title">Register Pharmacy</div></center>
          <div class="user-details">
          <div class="input-box">
              <span class="details">Pharmacy Name</span>
              <asp:TextBox ID="txtPharmacyName" runat="server" type="text"  placeholder="Enter Pharmacy Name"></asp:TextBox>
              </div>
          <div class="input-box">
              <span class="details">Pharmacy Registation Number</span>
              <asp:TextBox ID="txtRegNumber" runat="server" type="text"  placeholder="Enter Pharmacy Registation Number"></asp:TextBox>
         </div>
              <div class="input-box">
              <span class="details">Location</span>
              <asp:TextBox ID="txtLocation" runat="server" type="text"  placeholder="Enter Location"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Contact Number</span>
             <asp:TextBox ID="txtNumber" runat="server" type="text"  placeholder="Enter Contact Number"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Username</span>
             <asp:TextBox ID="txtUsername" runat="server" type="text"  placeholder="Enter Username"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Password</span>
             <asp:TextBox ID="txtPassword" runat="server" type="text"  placeholder="Enter Password"></asp:TextBox>
        </div>
             
            
        
          <table>
              <tr>
                  <td> <asp:Button ID="btnRegister" runat="server" Text="Register" Width="698px" Font-Bold="True" Font-Size="20pt" ForeColor="Red" OnClick="btnRegister_Click"  /></td>

              </tr>
          </table>
        </div>
    </div>
  </div>



        </header>

             
    </form>


</body>
</html>
