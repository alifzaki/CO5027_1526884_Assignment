<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ARTKUTU.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ProductDataSource" CellPadding="3" ShowFooter="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
    <Columns>
        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
            </ItemTemplate>
            <footerTemplate>
                <asp:LinkButton ValidationGroup="INSERT" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
            </footerTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name" SortExpression="Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ErrorMessage="Name is required field" ControlToValidate ="TextBox1" Text="*" ForeColor="Red">
            </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" ErrorMessage="Name is required field" ControlToValidate ="txtName" ValidationGroup="INSERT" Text="*" ForeColor="Red">
            </asp:RequiredFieldValidator>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Code" SortExpression="Code">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Code") %>'></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvEditCode" runat="server" ErrorMessage="Code is required field" ControlToValidate ="TextBox2" Text="*" ForeColor="Red">
            </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Code") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertCode" runat="server" ErrorMessage="Code is required field" ControlToValidate ="txtCode" Text="*" ForeColor="Red">
            </asp:RequiredFieldValidator>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price" SortExpression="Price">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditPrice" runat="server" ErrorMessage="Price is required field" ControlToValidate ="TextBox3" Text="*" ForeColor="Red">
            </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvInsertPrice" runat="server" ErrorMessage="Price is required field" ControlToValidate ="txtPrice" ValidationGroup="INSERT" Text="*" ForeColor="Red">
            </asp:RequiredFieldValidator>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Stock" SortExpression="Stock">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditStock" runat="server" ErrorMessage="Stock is required field" ControlToValidate ="TextBox4" Text="*" ForeColor="Red">
            </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvInsertStock" runat="server" ErrorMessage="Stock is required field" ControlToValidate ="txtStock" ValidationGroup="INSERT" Text="*" ForeColor="Red">
            </asp:RequiredFieldValidator>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:HyperLinkField Text="Set Image" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="uploadimage.aspx?ID={0}" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
    <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" ForeColor="Red" runat="server" />
     <asp:ValidationSummary  ID="ValidationSummary2" ForeColor="Red" runat="server" />
<asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526884_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblProduct] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Code] = @original_Code) OR ([Code] IS NULL AND @original_Code IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([Name], [Code], [Price], [Stock]) VALUES (@Name, @Code, @Price, @Stock)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblProduct] SET [Name] = @Name, [Code] = @Code, [Price] = @Price, [Stock] = @Stock WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Code] = @original_Code) OR ([Code] IS NULL AND @original_Code IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Code" Type="String" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
        <asp:Parameter Name="original_Stock" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Code" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Stock" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Code" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Stock" Type="Int32" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Code" Type="String" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
        <asp:Parameter Name="original_Stock" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>