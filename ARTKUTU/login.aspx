<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ARTKUTU.login"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 1000px;
            height: 268px;
            margin-right: 0px;
        }
        .auto-style6 {
            width: 432px;
            height: 78px;
        }
        .auto-style7 {
            width: 993px;
            height: 78px;
        }
        .auto-style8 {
            width: 432px;
            height: 82px;
        }
        .auto-style9 {
            width: 993px;
            height: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
       <h1> Log In </h1>
		
		<table>
		
			<tr>
				<td>User Name:</td>
				<td>
                    <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td>Password:</td>
				<td>
                    <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td colspan="2">
                  
                <asp:Button ID="Btnlogin" runat="server" Text="Log In" OnClick="Btnlogin_Click" /> 
                     </td>
        <asp:Literal ID="LiteralLogin" runat="server"></asp:Literal>

			</tr>
		</table>
    
    
</asp:Content>
