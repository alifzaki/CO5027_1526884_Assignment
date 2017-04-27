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
    </p>
    <p>
    <asp:label runat="server" text="Email"></asp:label>
    <asp:TextBox ID="Txtemail" runat="server" Width="183px"></asp:TextBox>
    </p>
    <p>
    <asp:label runat="server" text="Subject"></asp:label>
    <asp:TextBox ID="Txtsubject" runat="server" Width="183px"></asp:TextBox>
    </p>
    <p>
    <asp:label runat="server" text="Message"></asp:label>
    <asp:TextBox ID="Txtmessage" runat="server" Width="183px"></asp:TextBox>
    </p>
    <asp:button ID="btnsubmit" runat="server" text="Submit" OnClick="Unnamed5_Click" />

    <asp:literal ID="LitMessage" runat="server"></asp:literal>


    <p>Open hours: Monday to Friday. 930am to 10pm</p>
	<p>Telephone: +6738234567</p>
	<p>Email: Artkutu@gmail.com</p>

    


</asp:Content>
