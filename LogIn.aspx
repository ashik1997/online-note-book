<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 229px;
        }
        .auto-style13 {
            font-weight: bold;
        font-size: medium;
    }
        .auto-style16 {
        font-size: medium;
    }
    .auto-style22 {
        font-size: medium;
        color: #FF0000;
    }
    .auto-style23 {
            width: 84px;
        }
    .auto-style24 {
        width: 353px;
    }
    .auto-style25 {
        width: 269px;
    }
    .auto-style26 {
        width: 353px;
        text-align: center;
    }
        .auto-style27 {
            width: 84px;
            font-size: medium;
            text-align: right;
        }
        .auto-style28 {
            width: 84px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style24">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style24">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style27">Email</td>
        <td class="auto-style24">
                <asp:TextBox ID="TextBoxEmail" runat="server" Height="25px" Width="350px" CssClass="auto-style16" TextMode="Email"></asp:TextBox>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style24">
                &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style28">Password</td>
        <td class="auto-style24">
                <asp:TextBox ID="TextBoxPassword" runat="server" Height="25px" Width="350px" CssClass="auto-style16" TextMode="Password"></asp:TextBox>
            </td>
        <td>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style22"></asp:Label>
            </td>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style26"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Text="LogIn" Width="112px" Height="35px" OnClick="Button1_Click" />
                </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

