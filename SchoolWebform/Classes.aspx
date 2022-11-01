<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="SchoolWebform.Classes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ClassNo" DataSourceID="SqlDataSource1" Height="313px" Width="674px">
            <Columns>
                <asp:BoundField DataField="ClassNo" HeaderText="ClassNo" ReadOnly="True" SortExpression="ClassNo" />
               
                <asp:BoundField DataField="Strength" HeaderText="Strength" SortExpression="Strength" />
                <asp:BoundField DataField="ClassTeacher" HeaderText="ClassTeacher" SortExpression="ClassTeacher" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>
    </form>
</body>
</html>
