<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewWebform.aspx.cs" Inherits="WebApplication1.NewWebform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="main">
            <div class="panel">
                <div class="panel-header">
                    <h2>Registration Form</h2>
                </div>


                <div class="panel-body">
                    <div class="form-group">
                        <label>FullName</label>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>

                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ></asp:TextBox>

                    </div>


                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>


                    <div class="form-group">
                        <label>Address</label>

                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>


                    <div class="form-group">
                        <label>City</label>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                            <asp:ListItem>--Select City--</asp:ListItem>
                            <asp:ListItem>Himatnagar</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Ahmedabad</asp:ListItem>
                        </asp:DropDownList>
                    </div>




                </div>




                <div class="panel-footer">

                    <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Submit" OnClick="Button1_Click" />

                    <asp:Button ID="Button2" CssClass="btn" runat="server" Text="ShowData" OnClick="Button2_Click" />
                    <asp:TextBox CssClass="form-control" ID="txtsearchbox" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" CssClass="btn" runat="server" Text="Search" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" CssClass="btn" runat="server" Text="Delete" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" CssClass="btn" runat="server" Text="Edit" />
                    <asp:Button ID="Button6" CssClass="btn" runat="server" Text="Update" />


                </div>


            </div>

        </div>
         <br />
        <br />

        <center>
            <h1>User Details</h1>

        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>

        <br />
        <br />
        <br />
            </center>
    </form>
</body>
</html>
