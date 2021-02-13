<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditInfo.aspx.cs" Inherits="EditInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style14 {
        width: 272px;
    }
    .auto-style15 {
        color: #FFFFFF;
    }
    .auto-style16 {
        width: 272px;
        color: #FFFFFF;
    }
        .auto-style17 {
            color: #FFFFFF;
            height: 25px;
        }
        .auto-style18 {
            width: 272px;
            height: 25px;
        }
        .auto-style19 {
            width: 100%;
            height: 53px;
        }
        .auto-style20 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style19">
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style16"></td>
        <td class="auto-style15"></td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style18">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="162px">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="144px" ImageUrl='<%# Eval("Image") %>' Width="155px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style14">
            <asp:FileUpload ID="FileUploadImage" runat="server" Height="25px" Width="260px" />
            </td>
        <td class="auto-style15"></td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style16">Full Name</td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBoxName" runat="server" Height="25px" Width="260px"></asp:TextBox>
            <br class="auto-style15" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Name is required" ControlToValidate="TextBoxName" ForeColor="Red" CssClass="auto-style15"></asp:RequiredFieldValidator>
            </td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style16">Phone</td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBoxPhone" runat="server" Height="25px" Width="260px" TextMode="Phone"></asp:TextBox>
            <br class="auto-style15" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
                ErrorMessage="Phone is required" ControlToValidate="TextBoxPhone" ForeColor="Red" CssClass="auto-style15"></asp:RequiredFieldValidator>
            </td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style16">Address</td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBoxAddress" runat="server" Height="25px" Width="260px" TextMode="MultiLine" CssClass="auto-style20"></asp:TextBox>
        </td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style16">Email</td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">
                <asp:Label ID="LabelEmail" runat="server" CssClass="auto-style15"></asp:Label>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" Width="86px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

