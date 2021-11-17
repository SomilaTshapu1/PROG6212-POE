<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="POE_18012508.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
            width: 129px;
        }
        .auto-style2 {
            width: 168px;
        }
        .auto-style3 {
            height: 33px;
            width: 168px;
        }
        .auto-style4 {
            width: 129px;
        }
        .auto-style5 {
            width: 129px;
            font-size: small;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" border="1" style="font-family: 'Niagara Solid'; font-size: xx-large">
                 <tr>
                    <td class="auto-style4">Full Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFullname" runat="server" placeholder="Joe Doe"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Address</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtAddress" runat="server" placeholder="1 Example Street"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Gender</td>
                    <td class="auto-style2">
                        <asp:RadioButton GroupName="user" ID="rbMale" runat="server" Text="Male" OnCheckedChanged="rbMale_CheckedChanged" /><br />
                        <asp:RadioButton GroupName="user" ID="rbFemale" runat="server" Text="Female" OnCheckedChanged="rbFemale_CheckedChanged" /><br />
                        <asp:RadioButton Groupname="user" ID="rbOther" runat="server" Text="Other" OnCheckedChanged="rbOther_CheckedChanged" />
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="example@email.com" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Phone</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="0712345678" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Username</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Abc123"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="******" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td align ="right" class="auto-style3">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" BackColor="#33CCFF" ForeColor="White" />

                    </td>

                </tr>
                 <tr>
                     <td></td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="linkLogin" runat="server" OnClick="linkLogin_Click">Already Registered? Login Here</asp:LinkButton>
                     </td>
                     
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
