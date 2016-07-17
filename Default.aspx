<%@ Page Title="" Language="C#" MasterPageFile="/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #59BFD2;
        }
        .auto-style2 {
            color: #D90000;
        }
        .auto-style4 {
            color: #FF8C00;
        }
        .auto-style5 {
            color: #04756F;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderHeroImage" Runat="Server">
    <img src="images/hero-default.png"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeft" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderRight" Runat="Server">
    <h1>Join us for the 2017 <span class="auto-style1">A</span><span class="auto-style2">R</span><span class="auto-style4">T</span><span class="auto-style5">S</span> Festival!</h1>
    <h2>July 7-9, 2017 from 10 am to 8 pm at Treasure Island Marina in Troy, Ohio</h2>
    <p>&nbsp;</p>
    <div id="about">
    <p>The ARTS Festival is a three-day event that celebrates the arts in our community. Scenic Treasure Island Marina is 
        located minutes from historic downtown Troy, Ohio. The event provides three days of entertainment, shopping, dining, 
        and gallery exhibits to area locals and visitors alike. During the Festival you can enjoy:</p>
        <ul>
            <li>More than 150 artist booths filled with original works of art for sale.</li> 
            <li>Performers who provide entertainment at an outdoor amphitheater, including music and dance.</li> 
            <li>More than 20 food vendors who provide ethnic and healthy food choices along with plenty of traditional fair food options.</li> 
            <li>The children's area provides guided art enrichment activities and hands-on experiences and face painting.</li>
        </ul>
    <p>The ARTS Festival Association is a not-for-profit organization staffed entirely by volunteers who are passionate about its mission. All profits from the Festival are transferred to the ARTS Festival 
        Foundation that distributes it back into the community in the form of art scholarships and community grants.</p>
    </div>
    <div id="defaultImages">
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>
    </div>
    </br>
</asp:Content>

