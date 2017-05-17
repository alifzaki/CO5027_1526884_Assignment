<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ARTKUTU.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 2705px;
        }
        .auto-style4 {
            width: 453px;
        }
        .auto-style5 {
            width: 972px;
        }
        .auto-style6 {
            width: 361px;
            height: 199px;
        }
        .auto-style7 {
            height: 195px;
            width: 360px;
        }
        .auto-style8 {
            width: 361px;
            height: 195px;
        }
        .auto-style9 {
            height: 192px;
            width: 362px;
        }
        .auto-style10 {
            width: 361px;
            height: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 class="auto-style4">ART SPEAKS WHERE WORDS ARE UNABLE TO EXPLAIN</h1>
    <table class="auto-style3">
      <tr>
		<td class="auto-style5">
	<tr><a href="brush.aspx"><img src="picture/brushes.jpg" alt="image" class="auto-style6"/></a></tr>
	<tr><a href="canvas.aspx"><img src="picture/canvas.jpg" alt="image" class="auto-style7"/></a></tr>
	<tr><a href="pastels.aspx"><img src="picture/pastels.jpg" alt="image" class="auto-style8"/></a></tr>
	<tr><a href="Paint.aspx"><img src="picture/paints.jpg" alt="image" class="auto-style9"/></a></tr>
	<tr><a href="papers.aspx"><img src="picture/papers.jpg" alt="image" class="auto-style10"/></a></tr>
	<tr><a href="Easel.aspx"><img src="picture/easels.jpg" alt="image" class="auto-style10"/></a></tr>
		</td>
    </tr>
    </table>
    <asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate><ul></HeaderTemplate>
    <ItemTemplate>
    <li>
        <a href="<%# Eval("ID", "Productdetail.aspx?ID={0}") %>">
        <%#Eval ("Name") %>
        </a>
    </li>
    </ItemTemplate>
    <FooterTemplate>
     </ul>
    </FooterTemplate>
        </asp:Repeater>
    </asp:Content>

