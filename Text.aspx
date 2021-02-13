<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Text.aspx.cs" Inherits="Text" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style21 {
        width: 40px;
        height: 50px;
    }
    .auto-style22 {
        font-size: xx-large;
        text-align: center;
        height: 50px;
        width: 592px;
    }
    .auto-style23 {
        height: 50px;
    }
    .auto-style25 {
        width: 40px;
        text-align: right;
        height: 28px;
            color: #FFFFFF;
        }
    .auto-style28 {
        width: 40px;
        text-align: right;
        height: 318px;
    }
    .auto-style30 {
        height: 318px;
    }
    .auto-style31 {
        height: 28px;
    }
    .auto-style32 {
            width: 40px;
        }
    .auto-style33 {
            width: 592px;
        }
    .auto-style34 {
        height: 28px;
        width: 592px;
    }
    .auto-style35 {
        height: 318px;
        width: 592px;
    }
    .auto-style36 {
        height: 50px;
        width: 155px;
    }
    .auto-style37 {
            width: 155px;
        }
    .auto-style38 {
        height: 28px;
        width: 155px;
    }
    .auto-style39 {
        height: 318px;
        width: 155px;
    }
        .auto-style40 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style36"></td>
        <td class="auto-style21"></td>
        <td class="auto-style22"><strong>Note</strong></td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td class="auto-style33">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38"></td>
        <td class="auto-style25"><strong>Title</strong></td>
        <td class="auto-style34">
            <asp:TextBox ID="TextBoxTittle" runat="server" Height="25px" Width="598px"></asp:TextBox>
        </td>
        <td class="auto-style31"></td>
    </tr>
    <tr>
        <td class="auto-style39"></td>
        <td class="auto-style28"><span class="auto-style40"><strong>Text</strong></span>t</td>
        <td class="auto-style35">
            <asp:TextBox ID="TextBoxText" runat="server" Height="320px" TextMode="MultiLine" Width="598px"></asp:TextBox>
        </td>
        <td class="auto-style30"></td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td class="auto-style33">
            <asp:Button ID="ButtonSave" runat="server" Font-Bold="True" Height="33px" Text="SAVE" Width="81px" OnClick="ButtonSave_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td class="auto-style33">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td class="auto-style33">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td class="auto-style33">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td class="auto-style33">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td class="auto-style33">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

