<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modules.aspx.cs" Inherits="POE_18012508.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 542px;
        }
        .auto-style3 {
            margin-left: 18px;
        }
        .auto-style4 {
            margin-left: 11px;
        }
        .auto-style5 {
            color: #33CCFF;
        }
        .auto-style7 {
            margin-top: 0px;
        }
        .auto-style8 {
            margin-left: 13px;
        }
        .auto-style9 {
            width: 786px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <table align="left" border="0" style="font-family: NSimSun; font-size: large;" class="auto-style9">
                <tr>

                    <td>
                         <br />
                        Module Code</td>
                    <td class="auto-style2">
                         <span class="auto-style5"><strong>Calculate Hours To Spend For Self Study</strong></span><br />
                        <asp:TextBox ID="txtModuleCode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>Module Name</td>
                    <td class="auto-style2">
                         <asp:TextBox ID="txtModuleName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Start Date</td>
                    <td class="auto-style2">
                        <asp:Calendar ID="calendarStartDate" runat="server" Height="16px" Width="107px"></asp:Calendar>
                    </td>
                </tr>
                 <tr>
                    <td>Credits</td>
                    <td class="auto-style2">
                         <asp:TextBox ID="txtCredits" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>Weekly Class Hours</td>
                    <td class="auto-style2">
                         <asp:TextBox ID="txtClassWeeklyHours" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>Semester Class Weeks</td>
                    <td class="auto-style2">
                         <asp:TextBox ID="txtClassWeeks" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 
                 <tr>
                    <td></td>
                    <td class="auto-style2">
                        <asp:Button ID="btnCalculateSelfStudy" runat="server" Text="Calculate Self Study" OnClick="btnCalculateSelfStudy_Click" />
                    </td>
                </tr>
                 <tr>
                    <td>Self Study Per Week<br />
                        <br />
                     </td>
                    <td class="auto-style2">
                         <asp:TextBox ID="txtSelfStudyHours" runat="server"></asp:TextBox>
                         <br />
                         <br />
                         <span class="auto-style5"><strong>Calculate Remaining Hours For Self Study</strong></span></td>
                </tr>
                <tr>
                    <td>Date Recorded</td>
                    <td class="auto-style2">
                        <asp:Calendar ID="calRecordedDate" runat="server" Height="16px" Width="198px"></asp:Calendar>
                    </td>
                </tr>
            <tr>
                    <td>Hours Spent</td>
                    <td class="auto-style2">
                         <asp:TextBox ID="txtHoursSpent" runat="server"></asp:TextBox>
                    </td>
                </tr>
            
             <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnRemainingHours" runat="server" Text="Show Remaining Hours" OnClick="btnRemainingHours_Click" />


                    </td>
                </tr>
                 <tr>
                    <td>Remaining Hours</td>
                    <td class="auto-style2">
                         <asp:TextBox ID="txtRemainingHours" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />

                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="auto-style4" />

                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="auto-style3" />

                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnViewdata" runat="server" OnClick="btnViewdata_Click" Text="View Data" />
                        <asp:Button ID="btnGraphs" runat="server" CssClass="auto-style8" OnClick="btnGraphs_Click" Text="Show Graphs" Width="103px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>

            </table>
        
        <table class="auto-style7">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            
        </table>
        
    </form>
    
</body>
</html>
