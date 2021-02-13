<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style32 {
        width: 270px;
    }
    .auto-style33 {
        width: 270px;
        text-align: center;
    }
    .auto-style34 {
        color: #FFFFFF;
    }
    .auto-style35 {
        width: 270px;
        color: #FFFFFF;
    }
        .auto-style36 {
            font-size: medium;
        }
        .auto-style37 {
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">Registration Form</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style35">Full Name</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">
            <asp:TextBox ID="TextBoxName" runat="server" Height="25px" Width="260px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Name is required" ControlToValidate="TextBoxName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style35">Email</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">
            <asp:TextBox ID="TextBoxEmail" runat="server" Height="25px" Width="260px" TextMode="Email"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="Email is required" ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style35">Phone</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">
            <asp:TextBox ID="TextBoxPhone" runat="server" Height="25px" Width="260px" TextMode="Phone"></asp:TextBox>
            <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
                ErrorMessage="Phone is required" ControlToValidate="TextBoxPhone" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style35">Address</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">
            <asp:TextBox ID="TextBoxAddress" runat="server" Height="25px" Width="260px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style35">Image</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">
            <asp:FileUpload ID="FileUploadImage" runat="server" Height="25px" Width="260px" />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style35">Password</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">
            <asp:TextBox ID="TextBoxPassword" runat="server" Height="25px" Width="260px" TextMode="Password"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32"><span class="auto-style34">Confirm</span> <span class="auto-style34">Password</span></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style32">
            <asp:TextBox ID="TextBoxCPassword" runat="server" Height="25px" Width="260px" TextMode="Password"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxCPassword" CssClass="auto-style36" ErrorMessage="Both paswor are same" ForeColor="Red"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style33">
            <strong>
            <asp:Button ID="ButtonSubmit" runat="server" Text="SUBMIT" CssClass="auto-style37" OnClick="ButtonSubmit_Click" />
            </strong>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

