<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="SchoolWebform.Subjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SubjectId" DataSourceID="SqlDataSource1" Height="375px" Width="696px">
                <Columns>
                    <asp:BoundField DataField="SubjectId" HeaderText="SubjectId" ReadOnly="True" SortExpression="SubjectId" />
                    <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                    <asp:BoundField DataField="ClassNo" HeaderText="ClassNo" SortExpression="ClassNo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [Subjects]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
