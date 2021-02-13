<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NoteList.aspx.cs" Inherits="NoteList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            margin-top: 11px;
        }
    .auto-style20 {
        margin-top: 11px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td>

               <asp:TextBox ID="TextBoxSearch" runat="server" Height="30px" Width="350px" Text = "Enter Title or Post date (ex. Title  or 2017-12-14 etc.)"
    ForeColor = "Gray" onblur = "WaterMark(this, event);"
    onfocus = "WaterMark(this, event);">
</asp:TextBox>

                <asp:Button ID="ButtonSearch" runat="server" Height="35px" Text="SEARCH" OnClick="ButtonSearch_Click" />
                                <script type = "text/javascript">
                                    var defaultText = "Enter Title or Post date (ex. Title  or 2017-12-14 etc.)";
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1036px" CellPadding="4" CssClass="auto-style20" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Note List">
                            <EditItemTemplate>
                                <asp:Label ID="LabelDate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBoxTittle" runat="server" Height="17px" Text='<%# Eval("Tittle") %>' Width="796px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:TextBox ID="TextBoxText" runat="server" Text='<%# Eval("Text") %>' TextMode="MultiLine" Width="810px" Height="103px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                Post Date:
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                <br />
                                Title:
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Tittle") %>'></asp:Label>
                                <br />
                                Text:
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Text") %>'></asp:Label>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
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

