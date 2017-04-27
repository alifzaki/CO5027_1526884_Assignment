<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Privatepage.aspx.cs" Inherits="ARTKUTU.Privatepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        You have successfully logged in.
    </p>
    <asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClic="btnLogOut_Click" OnClick="btnLogOut_Click" />
</asp:Content>
