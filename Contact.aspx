<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: left;
            width: 135px;
            height: 35px;
        }
        .auto-style19 {
        text-align: left;
        width: 135px;
        height: 23px;
    }
    .auto-style20 {
        text-align: left;
        width: 324px;
        height: 23px;
    }
    .auto-style21 {
        text-align: left;
        height: 23px;
    }
        .auto-style24 {
            width: 100%;
            height: 383px;
        }
        .auto-style25 {
            color: #333333;
            height: 25px;
        }
        .auto-style33 {
            width: 135px;
            text-align: right;
            height: 34px;
        }
        .auto-style34 {
            width: 324px;
            height: 34px;
        }
        .auto-style35 {
            height: 34px;
        }
        .auto-style44 {
            text-align: left;
            width: 135px;
            height: 20px;
        }
        .auto-style45 {
            text-align: left;
            width: 324px;
            height: 20px;
        }
        .auto-style46 {
            text-align: left;
            height: 20px;
        }
        .auto-style47 {
            text-align: left;
            width: 324px;
            height: 35px;
        }
        .auto-style48 {
            text-align: left;
            height: 35px;
        }
        .auto-style49 {
            text-align: left;
            width: 324px;
            height: 31px;
        }
        .auto-style50 {
            text-align: left;
            height: 31px;
        }
        .auto-style51 {
            width: 135px;
            text-align: right;
            height: 31px;
        }
        .auto-style52 {
            width: 324px;
            height: 31px;
        }
        .auto-style53 {
            height: 31px;
        }
        .auto-style54 {
            width: 135px;
            text-align: right;
            height: 23px;
        }
        .auto-style55 {
            width: 324px;
            height: 23px;
        }
        .auto-style56 {
            height: 23px;
        }
        .auto-style57 {
            width: 135px;
            height: 30px;
        }
        .auto-style58 {
            width: 324px;
            height: 30px;
        }
        .auto-style59 {
            height: 30px;
        }
        .auto-style63 {
            width: 135px;
            height: 25px;
        }
        .auto-style65 {
            width: 324px;
            height: 12px;
        }
        .auto-style66 {
            height: 12px;
        }
        .auto-style67 {
            width: 135px;
            height: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style47"></td>
            <td class="auto-style48">

               <asp:TextBox ID="TextBoxSearch" runat="server" Height="30px" Width="350px" Text = "Enter Name or Phone No"
    ForeColor = "Gray" onblur = "WaterMark(this, event);"
    onfocus = "WaterMark(this, event);">
</asp:TextBox>
                               <script type = "text/javascript">
                    var defaultText = "Enter Name or Phone No";
    function WaterMark(txt, evt)
    {
        if(txt.value.length == 0 && evt.type == "blur")
        {
            txt.style.color = "gray";
            txt.value = defaultText;
        }
        if(txt.value == defaultText && evt.type == "focus")
        {
            txt.style.color = "black";
            txt.value="";
        }
    }
</script>
                <asp:Button ID="ButtonSearch" runat="server" Height="35px" Text="SEARCH" OnClick="ButtonSearch_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style44"></td>
            <td class="auto-style45">Add Contact</td>
            <td class="auto-style46"></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style51">Name</td>
            <td class="auto-style49">
                <asp:TextBox ID="TextBoxName" runat="server" Height="26px" Width="300px"></asp:TextBox>
            </td>
            <td class="auto-style50"></td>
        </tr>
        <tr>
            <td class="auto-style51">Phone</td>
            <td class="auto-style52">
                <asp:TextBox ID="TextBoxPhone" runat="server" Height="26px" Width="300px"></asp:TextBox>
            </td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style33">Email</td>
            <td class="auto-style34">
                <asp:TextBox ID="TextBoxEmail" runat="server" Height="26px" Width="300px"></asp:TextBox>
            </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style54">Image</td>
            <td class="auto-style55">
                <asp:FileUpload ID="FileUploadImage" runat="server" Width="300px" />
            </td>
            <td class="auto-style56"></td>
        </tr>
        <tr>
            <td class="auto-style57"></td>
            <td class="auto-style58">
                <asp:Button ID="ButtonSave" runat="server" OnClick="ButtonSave_Click" Text="Save" Width="117px" />
            </td>
            <td class="auto-style59"></td>
        </tr>
        <tr>
            <td class="auto-style67"></td>
            <td class="auto-style65"></td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style63"></td>
            <td colspan="2" class="auto-style25">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="736px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" Height="122px" ImageUrl='<%# Eval("Image") %>' Width="150px" />
                                <br />
                                Name:
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                <br />
                                Phon no:
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("PhoneNo") %>'></asp:Label>
                                <br />
                                Email:
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

