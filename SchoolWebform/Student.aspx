<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="SchoolWebform.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1016px;
            height: 497px;
        }
        .auto-style2 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RollNo" DataSourceID="SqlDataSource1" Height="463px" Width="953px" CssClass="auto-style2">
                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" SortExpression="RollNo" />
                    <asp:BoundField DataField="StudName" HeaderText="StudName" SortExpression="StudName" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [RollNo], [StudName], [Age] FROM [Student]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
