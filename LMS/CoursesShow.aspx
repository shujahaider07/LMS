<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursesShow.aspx.cs" Inherits="LMS.CoursesShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="CSS/Upload.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
      
        <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" CssClass="content-center" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand" Width="283px" ForeColor="Black" GridLines="Horizontal" CssClass="content-center">
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>' CssClass="content-center"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField />
                <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                <asp:BoundField />
                <asp:BoundField DataField="Type" HeaderText="Extension" />
                <asp:BoundField DataField="Date" HeaderText="Date" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
      
    </form>
</body>
</html>
