﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="Orders_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="Orders_datasource">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Label ID="order_numberLabel" runat="server" Text='<%# Eval("order_number") %>' />
                </td>
                <td>
                    <asp:Label ID="pickerLabel" runat="server" Text='<%# Eval("picker") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="pickedCheckBox" runat="server" Checked='<%# Eval("picked") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="N_itemsLabel" runat="server" Text='<%# Eval("N_items") %>' />
                </td>
                <td>
                    <asp:Button ID="btn" runat="server" Text="Details" PostBackUrl='<%# String.Format("order_info.aspx?o={0}", Eval("order_number")) %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="order_numberTextBox" runat="server" Text='<%# Bind("order_number") %>' />
                </td>
                <td>
                    <asp:TextBox ID="pickerTextBox" runat="server" Text='<%# Bind("picker") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="pickedCheckBox" runat="server" Checked='<%# Bind("picked") %>' />
                </td>
                <td>
                    <asp:TextBox ID="N_itemsTextBox" runat="server" Text='<%# Bind("N_items") %>' />
                </td>
                <td>
                    <asp:Button ID="btn" runat="server" Text="Details" PostBackUrl='<%# String.Format("order_info.aspx?o={0}", Eval("order_number")) %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="order_numberTextBox" runat="server" Text='<%# Bind("order_number") %>' />
                </td>
                <td>
                    <asp:TextBox ID="pickerTextBox" runat="server" Text='<%# Bind("picker") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="pickedCheckBox" runat="server" Checked='<%# Bind("picked") %>' />
                </td>
                <td>
                    <asp:TextBox ID="N_itemsTextBox" runat="server" Text='<%# Bind("N_items") %>' />
                </td>
                <td>
                    <asp:Button ID="btn" runat="server" Text="Details" PostBackUrl='<%# String.Format("order_info.aspx?o={0}", Eval("order_number")) %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Label ID="order_numberLabel" runat="server" Text='<%# Eval("order_number") %>' />
                </td>
                <td>
                    <asp:Label ID="pickerLabel" runat="server" Text='<%# Eval("picker") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="pickedCheckBox" runat="server" Checked='<%# Eval("picked") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="N_itemsLabel" runat="server" Text='<%# Eval("N_items") %>' />
                </td>
                <td>
                    <asp:Button ID="btn" runat="server" Text="Details" PostBackUrl='<%# String.Format("order_info.aspx?o={0}", Eval("order_number")) %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">order_number</th>
                                <th runat="server">picker</th>
                                <th runat="server">picked</th>
                                <th runat="server">N_items</th>
                                <th runat="server">See Details</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="order_numberLabel" runat="server" Text='<%# Eval("order_number") %>' />
                </td>
                <td>
                    <asp:Label ID="pickerLabel" runat="server" Text='<%# Eval("picker") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="pickedCheckBox" runat="server" Checked='<%# Eval("picked") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="N_itemsLabel" runat="server" Text='<%# Eval("N_items") %>' />
                </td>
                <td>
                    <asp:Button ID="btn" runat="server" Text="Details" PostBackUrl='<%# String.Format("order_info.aspx?o={0}", Eval("order_number")) %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="Orders_datasource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>
</asp:Content>

