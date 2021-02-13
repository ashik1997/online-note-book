<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ImageGallery.aspx.cs" Inherits="ImageGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 650px;
        }
        .auto-style13 {
            font-weight: bold;
        }
        .auto-style14 {
            margin-right: 6px;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            width: 650px;
            text-align: left;
        }
        .auto-style17 {
            font-weight: bold;
            text-decoration: none;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style12">

               <asp:TextBox ID="TextBoxSearch" runat="server" Height="30px" Width="350px" Text = "Enter date or location (ex. 2017-12-14 or Dhaka etc.)"
    ForeColor = "Gray" onblur = "WaterMark(this, event);"
    onfocus = "WaterMark(this, event);">
</asp:TextBox>

                <asp:Button ID="ButtonSearch" runat="server" Height="35px" Text="SEARCH" OnClick="ButtonSearch_Click" />
            </td>
            <td>

                <script type = "text/javascript">
                    var defaultText = "Enter date or location (ex. 2017-12-14 or Dhaka etc.)";
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

            </td>
        </tr>
        <tr>
            <td class="auto-style12">Location</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxLocation" runat="server" Height="25px" Width="350px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Short Derscription</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxShortDescription" runat="server" Height="36px" TextMode="MultiLine" Width="350px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Image</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUploadImage" runat="server" Height="25px" Width="350px" />
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Text="SAVE" Height="30px" OnClick="Button1_Click" Width="101px" />
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style14" ForeColor="#333333" GridLines="None" Width="935px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" Height="315px" Width="919px" ImageUrl='<%# Eval("Image") %>' />
                                <br />
                                Post Date:
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                <br />
                                Location:
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
                                <br />
                                Derscription:
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ShortDerscription") %>'></asp:Label>
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

