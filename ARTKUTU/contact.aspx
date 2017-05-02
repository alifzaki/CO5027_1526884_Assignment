<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="ARTKUTU.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div id="map"></div>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDiK1KU-qoIkpwvvWHuwtnk6WrkyP-PEqA&callback=initMap">

</script>
    <script src="Scripts/Map.js"></script>

                                                            <h1>LOG IN</h1>
    <p>
    <asp:Label runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="Txtname" runat="server" Width="183px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your name!" ControlToValidate="Txtname"></asp:RequiredFieldValidator>
    </p>
    <p>
    <asp:label runat="server" text="Email"></asp:label>
        <asp:TextBox ID="Txtemail" runat="server" Width="183px" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your email!" ControlToValidate="Txtemail"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email address!" ControlToValidate="Txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
    <p>
    <asp:label runat="server" text="Subject"></asp:label>
    <asp:TextBox ID="Txtsubject" runat="server" Width="183px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your subject!" ControlToValidate="Txtsubject"></asp:RequiredFieldValidator>
    </p>
    <p>
    <asp:label runat="server" text="Message"></asp:label>
    <asp:TextBox ID="Txtmessage" runat="server" Width="183px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fill in the message!" ControlToValidate="Txtmessage"></asp:RequiredFieldValidator>
    </p>
    <asp:button ID="btnsubmit" runat="server" text="Submit" OnClick="Unnamed5_Click" />

    <asp:literal ID="LitMessage" runat="server"></asp:literal>


    <p>Open hours: Monday to Friday. 930am to 10pm</p>
	<p>Telephone: +6738234567</p>
	<p>Email: Artkutu@gmail.com</p>


</asp:Content>
