<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graphs.aspx.cs" Inherits="POE_18012508.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 616px;
            color: #3399FF;
            font-size: large;
        }
        .auto-style2 {
            width: 1351px;
            height: 479px;
        }
        .auto-style3 {
            font-size: large;
            color: #0099FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        <div>
        </div>

        <table>
            <p class="auto-style1">
            <strong>Showing&nbsp; Hours Spent on Self Study Per Module&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            </p>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="389px">
            <Series>
                <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Module Name" Name="Series1" XValueMember="Name" YValueMembers="HoursSpent">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Name="Module Name" Title="Module Name">
                </asp:Legend>
            </Legends>
            <Titles>
                <asp:Title Name="PROGRAMMING">
                </asp:Title>
                <asp:Title Name="DATABASE">
                </asp:Title>
                <asp:Title Name="WEB DEVELOPMENT">
                </asp:Title>
            </Titles>
        </asp:Chart>

             <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource1" Width="389px">
            <Series>
                <asp:Series IsValueShownAsLabel="True" Legend="Module Name" Name="Series1" XValueMember="Name" YValueMembers="HoursSpent">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Name="Module Name" Title="Module Name" Enabled="False">
                </asp:Legend>
            </Legends>
            <Titles>
                <asp:Title Name="PROGRAMMING">
                </asp:Title>
                <asp:Title Name="DATABASE">
                </asp:Title>
                <asp:Title Name="WEB DEVELOPMENT">
                </asp:Title>
            </Titles>
        </asp:Chart>


        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mymodulesConnectionString %>" SelectCommand="SELECT * FROM [Module]"></asp:SqlDataSource>
        <p class="auto-style6">
            <strong><span class="auto-style3">Showing Hours Remaining For Self Study Per Module</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </strong>
            </p>
        <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Width="389px">
            <Series>
                <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Module Name" Name="Series1" XValueMember="Name" YValueMembers="Remaining">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Name="Module Name" Title="Module Name">
                </asp:Legend>
            </Legends>
            <Titles>
                <asp:Title Name="PROGRAMMING">
                </asp:Title>
                <asp:Title Name="DATABASE">
                </asp:Title>
                <asp:Title Name="WEB DEVELOPMENT">
                </asp:Title>
            </Titles>
        </asp:Chart>
        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1" Width="389px">
            <Series>
                <asp:Series IsValueShownAsLabel="True" Legend="Module Name" Name="Series1" XValueMember="Name" YValueMembers="Remaining" YValuesPerPoint="2">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Name="Module Name" Title="Module Name" Enabled="False">
                </asp:Legend>
            </Legends>
            <Titles>
                <asp:Title Name="PROGRAMMING">
                </asp:Title>
                <asp:Title Name="DATABASE">
                </asp:Title>
                <asp:Title Name="WEB DEVELOPMENT">
                </asp:Title>
            </Titles>
        </asp:Chart>
    </form>
</body>
</html>
