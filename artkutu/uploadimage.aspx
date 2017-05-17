<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="uploadimage.aspx.cs" Inherits="ARTKUTU.uploadimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="Imagefileuploadcontrol" runat="server" />

    <asp:Button ID="Btnupload" runat="server" Text="Upload" OnClick="Btnupload_Click" />

    <asp:ImageButton ID="CurrentImage" runat="server" OnClick="CurrentImage_Click" />
</asp:Content>

