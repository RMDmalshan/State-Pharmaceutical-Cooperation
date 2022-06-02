<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PharmacyLoginForm.aspx.cs" Inherits="SPCsystem.PharmacyLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>State Pharmaceutical Cooperation </title>
    <link rel ="stylesheet" href="SupplierLoginStyle.css" />
</head>
<body>



     <form id="form2" runat="server">
  
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


    <br />  <br />  



     <div class="all">
      <div class="container">
      <center><div class="title">Pharmacy Login</div></center>
           <div class="user-details">
          <div class="input-box">
              <span class="details">Username</span>
              <asp:TextBox ID="txtUsername" runat="server" type="text"  required  placeholder="Enter Username"></asp:TextBox>
              </div>
          <div class="input-box">
              <span class="details">Password</span>
              <asp:TextBox ID="txtPassword" runat="server" type="password"  required  placeholder="Enter Password"></asp:TextBox>
         </div>


               <table>
              <tr>
                    <td> <asp:Button ID="btnLogin" runat="server" Text="Login" Width="364px" Font-Bold="True" Font-Size="20pt" ForeColor="#0000CC" OnClick="btnLogin_Click" /></td>
                  </tr>
                   
                 
                   <tr><td><center>
                       <br />
                       If you dont have a account register first</center></td></tr>
                  
                 </table>

               <table>
                   <tr>
                       <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href ="PhamacyRegisterForm.aspx">Register</a></td>
                   </tr>
               </table>
               
        </div>
    </div>
</div>

          <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
 

    </form>
    


</body>
</html>
