<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">


<h1>
    Wrath of Khan
</h1>
        <img src="Image/images.jpg" />

		<div>
			<br />
			<asp:GridView ID="GridViewAllGameModels" runat="server" DataSourceID="DataSourceGameModels" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewAllGameModels_OnSelectedIndexChanged">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:CommandField ShowSelectButton="True" />
				</Columns>
				<EditRowStyle BackColor="#2461BF" />
				<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
				<RowStyle BackColor="#EFF3FB" />
				<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
				<SortedAscendingCellStyle BackColor="#F5F7FB" />
				<SortedAscendingHeaderStyle BackColor="#6D95E1" />
				<SortedDescendingCellStyle BackColor="#E9EBEF" />
				<SortedDescendingHeaderStyle BackColor="#4870BE" />
			</asp:GridView>


			<asp:ObjectDataSource ID="DataSourceGameModels" runat="server" TypeName="Comp229_Assign04.Default" SelectMethod="GetAllGameModels"></asp:ObjectDataSource>
            <asp:TextBox ID="txtEmailAddress" runat="server" />
            <asp:Button ID="btnEmailMe" runat="server" OnClick="btnEmailMe_Click" Text="Send Email" />
            <asp:Label ID="statusLabel" runat="server" />
		    <br />
		</div>
	</form>
        <hr/>
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Comp229-Assign04 Rister#300833150</p>
            </footer>
        </div>


     <hr/>


</body>
</html>
