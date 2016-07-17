<%@ Page Title="" Language="C#" MasterPageFile="/MasterPage.master" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeroImage" Runat="Server">
    <img src="images/hero-default.png"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderLeft" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderRight" Runat="Server">
    <h1>Update / Edit your Artist Registration Submission</h1>
    </br>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="790px" AutoGenerateRows="False" CssClass="table" DataKeyNames="artistID" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdated="DetailsView1_ItemUpdated">
        <Fields>
            <asp:TemplateField HeaderText="Name:" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditName" runat="server" Text='<%# Bind("name") %>' Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valEditName" runat="server" ControlToValidate="txtEditName" CssClass="error" ErrorMessage="Please enter your name."></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:BoundField DataField="address" HeaderText="Street Address:" SortExpression="address">
            <ControlStyle Font-Names="'Raleway'" Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="city" HeaderText="City:" SortExpression="city">
            <ControlStyle Font-Names="'Raleway'" Width="200px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="State:" SortExpression="state">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("state") %>'>
                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
                        <asp:ListItem Value="AL">Alaska</asp:ListItem>
                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                        <asp:ListItem Value="CA">California</asp:ListItem>
                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
                        <asp:ListItem Value="FL">Florida</asp:ListItem>
                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                        <asp:ListItem Value="ME">Maine</asp:ListItem>
                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
                        <asp:ListItem Value="MT">Montana</asp:ListItem>
                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                        <asp:ListItem Value="NY">New York</asp:ListItem>
                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                        <asp:ListItem Value="TX">Texas</asp:ListItem>
                        <asp:ListItem Value="UT">Utah</asp:ListItem>
                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
                        <asp:ListItem Value="WA">Washington</asp:ListItem>
                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("state") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("state") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:BoundField DataField="zip" HeaderText="Zip:" SortExpression="zip">
            <ControlStyle Font-Names="'Raleway'" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Phone Number:" SortExpression="phone">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditPhone" runat="server" Text='<%# Bind("phone") %>' Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valReqEditPhone" runat="server" ControlToValidate="txtEditPhone" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your phone number."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valPhoneNum" runat="server" ControlToValidate="txtEditPhone" CssClass="error" Display="Dynamic" ErrorMessage="Re-enter your phone number in the following format: 555-555-5555." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Address:" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditEmail" runat="server" Text='<%# Bind("email") %>' Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valReqEditEmail" runat="server" ControlToValidate="txtEditEmail" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email address."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valEditEmailExp" runat="server" ControlToValidate="txtEditEmail" CssClass="error" Display="Dynamic" ErrorMessage="Please re-enter your email in the following format: abc@gmail.com." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Re-enter Email:" SortExpression="email2">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditEmail2" runat="server" Text='<%# Bind("email2") %>' Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valEditEmail2" runat="server" ControlToValidate="txtEditEmail2" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email address again.  "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valEditEmailExp2" runat="server" ControlToValidate="txtEditEmail2" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email address in the following format: abc@gmail.com.  " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="valCompareEditEmails" runat="server" ControlToCompare="txtEditEmail2" ControlToValidate="txtEditEmail" CssClass="error" ErrorMessage="Your email addresses do not match, please re-enter."></asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("email2") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Website:" SortExpression="website">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditWeb" runat="server" Text='<%# Bind("website") %>' Width="200px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="valEditWebsite" runat="server" ControlToValidate="txtEditWeb" CssClass="error" Display="Dynamic" ErrorMessage="Please re-enter your website address in the following format: http://www.yourwebsite.com" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("website") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("website") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Artist Medium:" SortExpression="medium">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("medium") %>'>
                         <asp:ListItem>Jewelry</asp:ListItem>
                        <asp:ListItem>Mixed Media</asp:ListItem>
                        <asp:ListItem>Pottery</asp:ListItem>
                        <asp:ListItem>Digital Art</asp:ListItem>
                        <asp:ListItem>Glass / Lampwork</asp:ListItem>
                        <asp:ListItem>Leather</asp:ListItem>
                        <asp:ListItem>Wood</asp:ListItem>
                        <asp:ListItem>Printmaking</asp:ListItem>
                        <asp:ListItem>Sculpture</asp:ListItem>
                        <asp:ListItem>Photography</asp:ListItem>
                        <asp:ListItem>Fiber</asp:ListItem>
                        <asp:ListItem>Painting (Oil, Watercolor, etc.)</asp:ListItem>
                        <asp:ListItem>Drawing (Pen+Ink, Pastels, Chalk, Charcoal, etc.)</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("medium") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("medium") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Upload an image of your art:" SortExpression="artUpload">
                <EditItemTemplate>
                    <asp:FileUpload ID="fileEditArt" runat="server" />
                    <asp:RequiredFieldValidator ID="valEditArt" runat="server" ControlToValidate="fileEditArt" CssClass="error" Display="Dynamic" ErrorMessage="An image of your art is required."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valEditImageExt" runat="server" ControlToValidate="fileEditArt" CssClass="error" Display="Dynamic" ErrorMessage="Please select an image with one of the following file extensions: .jpg, .jpeg, .png, or .gif." ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif|.jpeg)$"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("artUpload") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("artUpload") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" ShowEditButton="True">
            <ControlStyle Font-Names="'Raleway'" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [artistTable] WHERE [artistID] = @artistID" InsertCommand="INSERT INTO [artistTable] ([name], [address], [city], [state], [zip], [phone], [email], [website], [medium], [artUpload], [email2]) VALUES (@name, @address, @city, @state, @zip, @phone, @email, @website, @medium, @artUpload, @email2)" SelectCommand="SELECT * FROM [artistTable] WHERE ([artistID] = @artistID)" UpdateCommand="UPDATE [artistTable] SET [name] = @name, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [phone] = @phone, [email] = @email, [website] = @website, [medium] = @medium, [artUpload] = @artUpload, [email2] = @email2 WHERE [artistID] = @artistID">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="artistID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
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
</asp:Content>

