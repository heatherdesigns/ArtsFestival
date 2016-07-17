<%@ Page Title="" Language="C#" MasterPageFile="/MasterPage.master" AutoEventWireup="true" CodeFile="artists.aspx.cs" Inherits="artists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderHeroImage" Runat="Server">
    <img src="images/hero-artists.png"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderRight" Runat="Server">
    <h1>Participating Artists</h1>
    </br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="artistID" DataSourceID="SqlDataSource1" Width="850px" AllowPaging="True" CssClass="table">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="artistID" DataNavigateUrlFormatString="edit.aspx?ID={0}" Text="Edit" >
            <ControlStyle Font-Names="'Raleway'" Width="50px" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
            <ControlStyle Font-Names="'Raleway'" />
            <ItemStyle Width="175px" />
            </asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" >
            <ControlStyle Font-Names="'Raleway'" />
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
            <ControlStyle Font-Names="'Raleway'" />
            <ItemStyle Width="160px" />
            </asp:BoundField>
            <asp:BoundField DataField="website" HeaderText="Website" SortExpression="website" >
            <ControlStyle Font-Names="'Raleway'" />
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="medium" HeaderText="Medium" SortExpression="medium" >
            <ControlStyle Font-Names="'Raleway'" />
            <ItemStyle Width="175px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [artistTable] WHERE [artistID] = @artistID" InsertCommand="INSERT INTO [artistTable] ([name], [address], [city], [state], [zip], [phone], [email], [website], [medium], [artUpload], [email2]) VALUES (@name, @address, @city, @state, @zip, @phone, @email, @website, @medium, @artUpload, @email2)" SelectCommand="SELECT * FROM [artistTable]" UpdateCommand="UPDATE [artistTable] SET [name] = @name, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [phone] = @phone, [email] = @email, [website] = @website, [medium] = @medium, [artUpload] = @artUpload, [email2] = @email2 WHERE [artistID] = @artistID">
        <DeleteParameters>
            <asp:Parameter Name="artistID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="website" Type="String" />
            <asp:Parameter Name="medium" Type="String" />
            <asp:Parameter Name="artUpload" Type="String" />
            <asp:Parameter Name="email2" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="website" Type="String" />
            <asp:Parameter Name="medium" Type="String" />
            <asp:Parameter Name="artUpload" Type="String" />
            <asp:Parameter Name="email2" Type="String" />
            <asp:Parameter Name="artistID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/registration.aspx" CssClass="hyperlink" Font-Names="'Raleway'">Add a new Artist Registration</asp:HyperLink>
</asp:Content>

