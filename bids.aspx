<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bids.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bidID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" DeleteText="Διαγραφή" EditText="Αλλαγή" SelectText="Επιλογή" ButtonType="Button" CancelText="Ακύρωση" UpdateText="Αποθήκευση" />
            <asp:BoundField DataField="bidID" HeaderText="Κωδικός Προσφοράς" InsertVisible="False" ReadOnly="True" SortExpression="bidID" />
            <asp:BoundField DataField="procurementID" HeaderText="Κωδικός Διαγωνισμού"   InsertVisible="False" ReadOnly="True" SortExpression="procurementID" />
            <asp:BoundField DataField="company" HeaderText="Επιχείρηση"   InsertVisible="False" ReadOnly="True" SortExpression="company" />
            <asp:BoundField DataField="bidprice" HeaderText="Τιμή Προσφοράς" SortExpression="bidprice" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:eProcurementDBConnectionString %>" DeleteCommand="DELETE FROM [Bids] WHERE [bidID] = @bidID" InsertCommand="INSERT INTO [Bids] ([bidprice]) VALUES (@bidprice)" SelectCommand="SELECT * FROM [Bids] WHERE ([company] = @company)" UpdateCommand="UPDATE [Bids] SET [bidprice] = @bidprice WHERE [bidID] = @bidID">
        <DeleteParameters>
            <asp:Parameter Name="bidID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="procurementID" Type="String" />
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="bidprice" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="company" SessionField="companyname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="procurementID" Type="String" />
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="bidprice" Type="Int32" />
            <asp:Parameter Name="bidID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

