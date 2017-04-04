<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="ARTKUTU.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <header class="body">
    </header>

    <section class="body">
    </section>

    <footer class="body">
    </footer>
	
	<form>
        
    <label>Name</label>
    <input name="name" placeholder="Type Here">
            
    <label>Email</label>
    <input name="email" type="email" placeholder="Type Here">
            
    <label>Message</label>
    <textarea name="message" placeholder="Type Here"></textarea>
         
        
        <asp:Button ID="Submit" runat="server" OnClick="Button1_Click" Text="Submit" Width="177px" />
        
</form>

</asp:Content>
