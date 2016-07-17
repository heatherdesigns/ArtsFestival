<%@ Page Title="" Language="C#" MasterPageFile="/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderHeroImage" Runat="Server">
    <img src="images/hero-registration.png"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderRight" Runat="Server">
    <h1>Artist Registration</h1>
    <p>Click on the &#39;NEW&#39; button to fill out the form below to participate in the 2017 Arts Festival.</p>
    </br>
    <p>
        <asp:Label ID="lblResponse" runat="server"></asp:Label>
    </p>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="677px" AutoGenerateRows="False" CssClass="table" DataKeyNames="artistID" DataSourceID="SqlDataSource1" OnItemInserting="DetailsView1_ItemInserting">
        <Fields>
            <asp:TemplateField HeaderText="Name:" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("name") %>' Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valName" runat="server" ControlToValidate="txtName" CssClass="error" ErrorMessage="Please enter your name."></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:BoundField DataField="address" HeaderText="Street Address:" SortExpression="address" >
                <ControlStyle Font-Names="'Raleway'" />
            </asp:BoundField>
            <asp:BoundField DataField="city" HeaderText="City:" SortExpression="city" >
                <ControlStyle Font-Names="'Raleway'" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="State:" SortExpression="state">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("state") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
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
                        <asp:ListItem Selected="True" Value="OH">Ohio</asp:ListItem>
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
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("state") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:BoundField DataField="zip" HeaderText="Zip Code:" SortExpression="zip" >
                <ControlStyle Font-Names="'Raleway'" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Phone Number:" SortExpression="phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("phone") %>' Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valReqPhone" runat="server" ControlToValidate="txtPhone" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your phone number.  "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valPhone" runat="server" ControlToValidate="txtPhone" CssClass="error" Display="Dynamic" EnableViewState="False" ErrorMessage="Please re-enter your phone number  in this format: 555-555-5555." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Address:" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("email") %>' Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valReqEmail2" runat="server" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email address.  "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valFormatEmail" runat="server" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email in the correct format: abc@gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Re-enter Email:" SortExpression="email2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("email2") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtEmail2" runat="server" Text='<%# Bind("email2") %>' Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valReqEmail" runat="server" ControlToValidate="txtEmail2" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email address.  "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valFormatEmail2" runat="server" ControlToValidate="txtEmail2" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email in the correct format: abc@gmail.com.    " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="valCompareEmails" runat="server" ControlToCompare="txtEmail2" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic" ErrorMessage="Email addresses do not match. Please re-enter you email address."></asp:CompareValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("email2") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
                <ItemStyle Wrap="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Website:" SortExpression="website">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("website") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtWebsite" runat="server" Text='<%# Bind("website") %>' Width="200px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="valWebsite" runat="server" ControlToValidate="txtWebsite" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your website address in the correct format:  http://www.website.com." ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("website") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Artist Medium:" SortExpression="medium">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("medium") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
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
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("medium") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Upload an image of your art:" SortExpression="artUpload">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("artUpload") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:FileUpload ID="artFileUpload" runat="server" />
                    <asp:RequiredFieldValidator ID="valImage" runat="server" ControlToValidate="artFileUpload" CssClass="error" Display="Dynamic" ErrorMessage="Image of your art is required.  "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valImageExt" runat="server" ControlToValidate="artFileUpload" CssClass="error" Display="Dynamic" ErrorMessage="Please select an image with one of the following file extensions:  .jpg, .jpeg, .png or .gif" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif|.jpeg)$"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("artUpload") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Names="'Raleway'" />
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" ShowInsertButton="True" >
                <ControlStyle Font-Names="'Raleway'" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [artistTable] WHERE [artistID] = @artistID" InsertCommand="INSERT INTO [artistTable] ([name], [address], [city], [state], [zip], [phone], [email], [website], [medium], [artUpload]) VALUES (@name, @address, @city, @state, @zip, @phone, @email, @website, @medium, @artUpload)" SelectCommand="SELECT * FROM [artistTable]" UpdateCommand="UPDATE [artistTable] SET [name] = @name, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [phone] = @phone, [email] = @email, [website] = @website, [medium] = @medium, [artUpload] = @artUpload WHERE [artistID] = @artistID">
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
            <asp:Parameter Name="artistID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>

