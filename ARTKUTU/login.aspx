<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ARTKUTU.login"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h1>LOG IN</h1>
      <div class="box2">
    <table>
              <tr>
      <td>Username</td>
        <td>
                  <asp:textbox ID="TxtUsername" runat="server"></asp:textbox>
        </td>
              </tr>
  <tr>
     <td>Password</td>
      <td>
        <asp:textbox ID="TxtPassword" runat="server"></asp:textbox>
      </td>
  <tr>
       <td colspan="2">
        <asp:button runat="server" text="Login" OnClick="Unnamed1_Click" /></td>
  </tr>
  </tr>
         <asp:literal ID="litLoginError" runat="server"></asp:literal>
  
    </table>
      </div>
    
    
</asp:Content>
