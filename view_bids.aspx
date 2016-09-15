<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_bids.aspx.cs" Inherits="view_bids" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">

    <div id="cont">
    Επιλέξτε διαγωνισμό: 
        <br /><br />
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="idproc" Width="750px"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eProcurementDBConnectionString %>" SelectCommand="SELECT [idproc], [name], [expiration_date] FROM [procurements] ORDER BY [name]"></asp:SqlDataSource>
         <br /><br />
        Προσφορές Διαγωνισμού:
        <br />
        <asp:GridView ID="GridView1" runat="server" Visible="False" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="bidID">
            <Columns>
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:BoundField DataField="bidID" HeaderText="Κωδικός Προσφοράς" InsertVisible="False" ReadOnly="True" SortExpression="bidID" />
                                <asp:BoundField DataField="procurementID" HeaderText="Κωδικός Διαγωνισμού" SortExpression="procurementID" />
                                <asp:BoundField DataField="company" HeaderText="Όνομα Επιχείρησης" SortExpression="company" />
                                <asp:BoundField DataField="bidprice" HeaderText="Τιμή Προσφοράς" SortExpression="bidprice" />
            </Columns>
        </asp:GridView>


        <asp:GridView ID="GridView2" runat="server" Visible="false" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="bidID">
            <Columns>
                 
                <asp:BoundField DataField="bidID" HeaderText="Κωδικός Προσφοράς" ReadOnly="True" InsertVisible="False" SortExpression="bidID"></asp:BoundField>
                <asp:BoundField DataField="procurementID" HeaderText="Κωδικός Διαγωνισμού" SortExpression="procurementID"></asp:BoundField>
                <asp:BoundField DataField="bidprice" HeaderText="Τιμή Προσφοράς" SortExpression="bidprice"></asp:BoundField>
            </Columns>
        </asp:GridView>

        <asp:Label ID="Label1" runat="server" Text="Δεν έχετε πρόσβαση" ForeColor="Red"></asp:Label>

        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:eProcurementDBConnectionString %>' SelectCommand="SELECT * FROM [Bids] WHERE ([procurementID] = @procurementID)" DeleteCommand="DELETE* FROM [Bids] WHERE ([procurementID] = @procurementID)">
            <DeleteParameters>
                <asp:Parameter Name="procurementID" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ListBox1" PropertyName="SelectedValue" Name="procurementID" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:eProcurementDBConnectionString %>' SelectCommand="SELECT [bidID], [procurementID], [bidprice] FROM [Bids] WHERE ([procurementID] = @procurementID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListBox1" PropertyName="SelectedValue" Name="procurementID" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>

        <br />      
        
          
        </div>

</asp:Content>

