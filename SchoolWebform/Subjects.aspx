<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="SchoolWebform.Subjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SubId" DataSourceID="SqlDataSource1" Height="375px" Width="696px">
                <Columns>
                    <asp:BoundField DataField="SubId" HeaderText="SubId" ReadOnly="True" SortExpression="SubId" />
                    <asp:BoundField DataField="SubName" HeaderText="SubName" SortExpression="SubName" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [SubId], [SubName], [Duration] FROM [Subjects]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
