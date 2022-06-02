<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupplierRegisterForm.aspx.cs" Inherits="SPCsystem.SupplierRegisterForm" %>

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

        </header>




           <div class="all">
      <div class="container">
      <center><div class="title">Register Supplier</div></center>
          <div class="user-details">
          <div class="input-box">
              <span class="details">First Name</span>
              <asp:TextBox ID="txtFirstName" runat="server" type="text"  placeholder="Enter First Name"></asp:TextBox>
              </div>
          <div class="input-box">
              <span class="details">Last Name</span>
              <asp:TextBox ID="txtLastName" runat="server" type="text"  placeholder="Enter Last Name"></asp:TextBox>
         </div>
              <div class="input-box">
              <span class="details">Email</span>
              <asp:TextBox ID="txtEmail" runat="server" type="text"  placeholder="Enter Email Address"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Address</span>
             <asp:TextBox ID="txtAddress" runat="server" type="text"  placeholder="Enter Address"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Phone Number</span>
             <asp:TextBox ID="txtNumber" runat="server" type="text"  placeholder="Enter Number"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">NIC</span>
             <asp:TextBox ID="txtNIC" runat="server" type="text"  placeholder="Enter NIC"></asp:TextBox>
        </div>
               <div class="input-box">
             <span class="details">Username</span>
             <asp:TextBox ID="txtUsername" runat="server" type="text"  placeholder="Enter Username"></asp:TextBox>
         </div>
               <div class="input-box">
             <span class="details">Password</span>
             <asp:TextBox ID="txtPassword" runat="server" type="password"  placeholder="Enter Password"></asp:TextBox>
         </div>
        
          <table>
              <tr>
                  <td> <asp:Button ID="btnRegister" runat="server" Text="Register" Width="698px" Font-Bold="True" Font-Size="20pt" ForeColor="Red" OnClick="btnRegister_Click"  /></td>

              </tr>
          </table>
        </div>
    </div>
  </div>
    
    </form>
</body>
</html>
