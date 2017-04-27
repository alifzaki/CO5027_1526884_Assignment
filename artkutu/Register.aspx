<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ARTKUTU.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="box2">
          <h1> REGISTER</h1>
         <p><asp:Label ID="lblName" runat="server" Text="Name" ForeColor="black"></asp:Label>
         <asp:TextBox ID="txtName" runat="server"></asp:TextBox></p>

        <p> <asp:Label ID="lblEmail" runat="server" Text="Email" ForeColor="black"></asp:Label>
         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></p>

         <p><asp:Label ID="lblUsername" runat="server" Text="Username" ForeColor="black"></asp:Label>
         <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></p>

         <p><asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="black"></asp:Label>
         <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></p>

         <p><asp:Button ID="BtnReg" runat="server" Text="Sign Up" OnClick="btnReg_Click1"/> </p>
         
         <p> <asp:Literal ID="litError" runat="server"></asp:Literal></p>
    </div>

</asp:Content>
