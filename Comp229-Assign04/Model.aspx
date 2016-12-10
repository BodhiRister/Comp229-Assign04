<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.Model" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<h1>
				<asp:Label runat="server" ID="LabelName"></asp:Label>
			</h1>
			<p>
				<asp:Image runat="server" ID="Image" Width="500" />
			</p>

			<p>
				Faction:
				<asp:Label runat="server" ID="LabelFaction"></asp:Label>
			</p>

			<p>
				Rank:
				<asp:Label runat="server" ID="LabelRank"></asp:Label>
			</p>

			<p>
				Base:
				<asp:Label runat="server" ID="LabelBase"></asp:Label>
			</p>

			<p>
				Size:
				<asp:Label runat="server" ID="LabelSize"></asp:Label>
			</p>

			<p>
				DeploymentZone:
				<asp:Label runat="server" ID="LabelDeploymentZone"></asp:Label>
			</p>

			<p>
				Traits:
				<asp:Label runat="server" ID="LabelTraits"></asp:Label>
			</p>


			<p>
				Types:
				<asp:Label runat="server" ID="LabelTypes"></asp:Label>
			</p>

			<p>
				DefenseChart:
				<asp:GridView runat="server" ID="GridDefenseChart" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                    <EmptyDataTemplate>
                        No Special Abilities
                    </EmptyDataTemplate>
				    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
				</asp:GridView>
			</p>


			<p>
				Mobility:
				<asp:Label runat="server" ID="LabelMobility"></asp:Label>
			</p>

			<p>
				Willpower:
				<asp:Label runat="server" ID="LabelWillpower"></asp:Label>
			</p>

			<p>
				Resiliance:
				<asp:Label runat="server" ID="LabelResiliance"></asp:Label>
			</p>

			<p>
				Wounds:
				<asp:Label runat="server" ID="LabelWounds"></asp:Label>
			</p>


			<p>
				SpecialAbilities:
				<asp:GridView runat="server" ID="GridSpecialAbilities" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                    <EmptyDataTemplate>
                        No Special Abilities
                    </EmptyDataTemplate>
				    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
				</asp:GridView>
			</p>


			<p>
				Actions:
				<asp:GridView runat="server" ID="GridActions" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />

				</asp:GridView>
			</p>




            <asp:TextBox ID="TextNewName" runat="server" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />

            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"/>

		</div>
	</form>
</body>
</html>
