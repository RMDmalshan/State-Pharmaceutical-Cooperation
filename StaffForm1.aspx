<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffForm1.aspx.cs" Inherits="SPCsystem.StaffForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>State Pharmaceutical Cooperation</title>
    <link rel ="stylesheet" href="StaffStyle.css"; />
</head>




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

        


       
    

      <div class="all">
      <div class="container">
      <center><div class="title">Manage Stock</div></center>
          <div class="user-details">
          <div class="input-box">
              <span class="details">Stock ID</span>
              <asp:TextBox ID="txtStockID" runat="server" type="text"  placeholder="Enter Stock ID " required ></asp:TextBox>
              </div>
          <div class="input-box">
              <span class="details">Stock Name</span>
              <asp:TextBox ID="txtStockName" runat="server" type="text"  placeholder="Enter Stock Name"></asp:TextBox>
         </div>
              <div class="input-box">
              <span class="details">Date Of Manufactacture</span>
              <asp:TextBox ID="txtDOM" runat="server" type="text"  placeholder="Enter Date Of Manufactacture"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Expiration Date</span>
             <asp:TextBox ID="txtED" runat="server" type="text"  placeholder="Enter Expiration Date"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Price</span>
             <asp:TextBox ID="txtPrice" runat="server" type="text"  placeholder="Enter Price"></asp:TextBox>
         </div>
             <div class="input-box">
             <span class="details">Quantity</span>
             <asp:TextBox ID="txtQuantity" runat="server" type="text"  placeholder="Enter Quantity"></asp:TextBox>
        
        </div>
        
          <table>
              <tr>
                  <td> <asp:Button ID="btnAdd" runat="server" Text="ADD" Width="160px" OnClick="btnAdd_Click"  /></td>
                  <td> <asp:Button ID="btnClear" runat="server" Text="CLRAR" Width="160px" OnClick="btnClear_Click"/></td>
                    <td> <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" Width="160px" OnClick="btnUpdate_Click"/></td>
                  <td> <asp:Button ID="btnSearch" runat="server" Text="SEARCH" Width="160px" OnClick="btnSearch_Click"/></td>

              </tr>
          </table>
              <table>
           <tr>
                <td> <center> <asp:gridview runat="server" ID="dlStock"></asp:gridview> </center></td>
               
               </td>
           </tr>
       </table>
        </div>
    </div>
  </div>
        <td> <asp:label runat="server" text="Label" ID="lblError"></asp:label>
       


 </form>




    
  
</body>
</html>
