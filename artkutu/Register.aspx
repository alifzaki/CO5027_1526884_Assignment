<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ARTKUTU.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
	<tr>
	
<form action="/action_page.php">

		<tr>
	
	<td>FullName<asp:TextBox ID="txtFullName" runat="server" Width="413px"></asp:TextBox>
            </td><td> 
                &nbsp;</td><br>
	
	</tr>
    <td>Email<asp:TextBox ID="txtEmail" runat="server" Width="413px"></asp:TextBox>
    
	    </td><td> 
            &nbsp;</tr>
	<tr>
	
	<td>UserName<asp:TextBox ID="txtUsername" runat="server" Width="415px"></asp:TextBox>
        </td><td> 
            &nbsp;</td><br>
	
	</tr>
        <tr>
	
	<td>Password<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="409px"></asp:TextBox>
            </td><td> 
                &nbsp;</td><br>
	
	</tr>
    	
	<tr>
	<td>

         <p><asp:Button ID="BtnReg" runat="server" Text="Sign Up" OnClick="btnReg_Click1"/> </p>
         
         <p> <asp:Literal ID="litError" runat="server"></asp:Literal></p>
        </td>
	</tr>
	</table>

</asp:Content>
