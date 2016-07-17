<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="volunteers.aspx.cs" Inherits="volunteers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .volunteer-tbl {
            width: 96%;
        }
        .auto-style1 {
            width: 141px;
        }
        .auto-style2 {
            width: 141px;
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
        }
    .auto-style4 {
        width: 141px;
        height: 16px;
    }
    .auto-style5 {
        height: 16px;
    }
    .auto-style6 {
        width: 141px;
        height: 26px;
    }
    .auto-style7 {
        height: 26px;
    }
        .auto-style8 {
            height: 22px;
            width: 343px;
        }
        .auto-style9 {
            height: 26px;
            width: 343px;
        }
        .auto-style10 {
            width: 343px;
        }
        .auto-style11 {
            height: 16px;
            width: 343px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderHeroImage" Runat="Server">
    <img src="images/hero-volunteer.png"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderRight" Runat="Server">
    <h1>We <i class="fa fa-heart" aria-hidden="true" style="color: #d90000;"></i> volunteers!</h1>
    <p>Sign up to help with the ARTS Festival.</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table class="volunteer-tbl">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtName" runat="server" BorderStyle="Dotted" Height="20px" Width="300px" BorderColor="#59BFD2" Font-Names="'Raleway', sans-serif" CssClass="table"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valName" runat="server" ControlToValidate="txtName" CssClass="error" ErrorMessage="Please enter your name.">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblAdress" runat="server" Text="Street Address:" AssociatedControlID="txtAddress"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtAddress" runat="server" Height="20px" Width="300px" BorderColor="#59BFD2" BorderStyle="Dotted" Font-Names="'Raleway', sans-serif" CssClass="table"></asp:TextBox>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblCity" runat="server" Text="City:" AssociatedControlID="txtCity"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtCity" runat="server" Height="20px" Width="300px" BorderColor="#59BFD2" BorderStyle="Dotted" Font-Names="'Raleway', sans-serif" CssClass="table"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblState" runat="server" Text="State:" AssociatedControlID="txtState"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtState" runat="server" Height="20px" Width="300px" BorderColor="#59BFD2" BorderStyle="Dotted" Font-Names="'Raleway', sans-serif" CssClass="table"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblZip" runat="server" Text="Zip Code:" AssociatedControlID="txtZip"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtZip" runat="server" Height="20px" Width="300px" BorderColor="#59BFD2" BorderStyle="Dotted" Font-Names="'Raleway', sans-serif" CssClass="table"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblPhone" runat="server" Text="Phone:" AssociatedControlID="txtPhone"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtPhone" runat="server" Height="20px" Width="300px" BorderColor="#59BFD2" BorderStyle="Dotted" Font-Names="'Raleway', sans-serif" CssClass="table"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valPhone" runat="server" ControlToValidate="txtPhone" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your phone number.">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="valNumber" runat="server" ControlToValidate="txtPhone" CssClass="error" ErrorMessage="Re-enter your phone number in the following format:  (555)555-5555." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtEmail" runat="server" Height="20px" Width="300px" BorderColor="#59BFD2" BorderStyle="Dotted" Font-Names="'Raleway', sans-serif" CssClass="table"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email.">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="valEmailFormat" runat="server" ControlToValidate="txtEmail" CssClass="error" ErrorMessage="Re-enter your email in the correct format:  abc@gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblEmail2" runat="server" Text="Re-enter Email:" AssociatedControlID="txtEmail2"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtEmail2" runat="server" Height="20px" Width="300px" BorderColor="#59BFD2" BorderStyle="Dotted" Font-Names="'Raleway', sans-serif" CssClass="table"></asp:TextBox>
                <asp:CompareValidator ID="valEmailCompare" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmail2" CssClass="error" ErrorMessage="Email addresses do not match. Please re-enter." Display="Dynamic">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail2" CssClass="error" Display="Dynamic" ErrorMessage="Please enter your email again for confirmation.">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblShirt" runat="server" Text="Shirt size:"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:ListBox ID="ListBox1" runat="server" BackColor="#59BFD2" Rows="5" Width="150px" BorderStyle="Dotted" Font-Names="'Raleway', sans-serif"></asp:ListBox>
                <asp:RequiredFieldValidator ID="valShirt" runat="server" ControlToValidate="ListBox1" CssClass="error" ErrorMessage="Please select a shirt size.">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style11"></td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Font-Names="'Raleway', sans-serif" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style10">
                <asp:ValidationSummary ID="valSummary" runat="server" CssClass="error" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblVolThanks" runat="server" CssClass="thanks"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblResults" runat="server" CssClass="results"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblSize" runat="server" CssClass="results"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>&nbsp;</p>
    
</asp:Content>

