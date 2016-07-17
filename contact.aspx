<%@ Page Title="" Language="C#" MasterPageFile="/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #59BFD2;
        }
        .auto-style2 {
            color: #D90000;
        }
        .auto-style3 {
            color: #FF8C00;
        }
        .auto-style4 {
            color: #04756F;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderHeroImage" Runat="Server">
    <img src="images/hero-contact.png"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderRight" Runat="Server">
    <h1>Contact the <span class="auto-style1">A</span><span class="auto-style2">R</span><span class="auto-style3">T</span><span class="auto-style4">S</span> Festival</h1>
    <p>&nbsp;</p>
    <h2>ARTS Festival mailing address</h2>
    <p>PO Box 555</p>
    <p>Troy, Ohio 45373</p>
    <p>&nbsp;</p>
    <p>Phone: 937-555-1234</p>
    <p>Email:
        <asp:HyperLink ID="emailLink" runat="server" CssClass="hyperlink" NavigateUrl="mailto:artsfest.com">info@artsfest.com</asp:HyperLink>
    </p>
    <p>&nbsp;</p>
    <h2>Festival Location</h2>
    <p>Treasure Island Marina</p>
    <p>439 N. Elm Street</p>
    <p>Troy, Ohio 45373</p>
</asp:Content>

