﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products_info.aspx.cs" Inherits="Products_products_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="image-block">
        <asp:Image ID="image" runat="server" AlternateText="Product Image"/>
    </div>
    <div id="data-block">
        <h1><%= name %></h1>
        <h2><%= price %>$</h2>
        <h3>Origin: <%= origin %></h3>
        <h3>Eco or not: <%= eco_or_not %></h3>
        <h3>Quantity in stock: <%= quantity_in_stock %></h3>
        <h3>Place: <%= place %></h3>
        <h3>Alternative: <%= alternative %></h3>
        <asp:Button ID="Button1" runat="server" Text="Add to Cart" />
        <asp:Button ID="Button2" runat="server" Text="Edit" />
        <asp:Button ID="Button3" runat="server" Text="Delete" />
    </div>
    <p>Description: <%= description %></p>
</asp:Content>

