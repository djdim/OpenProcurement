<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="procurements.aspx.cs" Inherits="procurements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    
    <div id="procurements_div" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/admin.aspx" Visible="False">Δημιουργία Νέου Διαγωνισμού</asp:HyperLink>
<br />   <br />   
     
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="idproc" OnRowDataBound="mygrid_RowDataBound">
        <Columns>          
                <asp:TemplateField>
                    <ItemTemplate>                
                        <asp:LinkButton CommandName="Delete" ID="BtnDelete" runat="server" Text="Διαγραφή" />
                        
                    </ItemTemplate>
                </asp:TemplateField>
                            <asp:TemplateField>
                    <ItemTemplate>                
                        
                        <asp:LinkButton CommandName="Select" ID="BtnSelect" runat="server" Text="Επιλογή" OnClick="view_bids" />
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:BoundField DataField="idproc" HeaderText="Α/α Διαγωνισμού" InsertVisible="False" ReadOnly="True" SortExpression="idproc" />
            <asp:BoundField DataField="name" HeaderText="Ονομασία Διαγωνισμού" SortExpression="name" />
            <asp:BoundField DataField="protocol" HeaderText="Αρ. Πρωτοκόλλου" SortExpression="protocol" />
            <asp:BoundField DataField="hospital" HeaderText="Όνομα Νοσοκομείο" SortExpression="hospital" />
            <asp:BoundField DataField="category" HeaderText="Κατηγορία Προμήθειας" SortExpression="category" />
            <asp:BoundField DataField="type" HeaderText="Τύπος Προμήθειας" SortExpression="type" />
            <asp:BoundField DataField="amount" HeaderText="Ποσότητα Προμήθειας" SortExpression="amount" />
            <asp:BoundField DataField="specifications" HeaderText="Προδιαγραφές Προμήθειας" SortExpression="specifications" />
            <asp:BoundField DataField="creation_date" HeaderText="Έναρξη Διαγωνισμού" SortExpression="creation_date" />
            <asp:BoundField DataField="expiration_date" HeaderText="Λήξη Διαγωνισμού" SortExpression="expiration_date" />
        </Columns>
        <HeaderStyle Font-Bold="False" Font-Size="Medium" ForeColor="#666666" Height="40px" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eProcurementDBConnectionString %>" SelectCommand="SELECT * FROM [procurements]" DeleteCommand="DELETE FROM [procurements] WHERE [idproc] = @idproc" InsertCommand="INSERT INTO [procurements] ([name], [protocol], [hospital], [category], [type], [amount], [specifications], [creation_date], [expiration_date]) VALUES (@name, @protocol, @hospital, @category, @type, @amount, @specifications, @creation_date, @expiration_date)" UpdateCommand="UPDATE [procurements] SET [name] = @name, [protocol] = @protocol, [hospital] = @hospital, [category] = @category, [type] = @type, [amount] = @amount, [specifications] = @specifications, [creation_date] = @creation_date, [expiration_date] = @expiration_date WHERE [idproc] = @idproc">
        <DeleteParameters>
            <asp:Parameter Name="idproc" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="protocol" Type="String" />
            <asp:Parameter Name="hospital" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="specifications" Type="String" />
            <asp:Parameter DbType="Date" Name="creation_date" />
            <asp:Parameter DbType="Date" Name="expiration_date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="protocol" Type="String" />
            <asp:Parameter Name="hospital" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="specifications" Type="String" />
            <asp:Parameter DbType="Date" Name="creation_date" />
            <asp:Parameter DbType="Date" Name="expiration_date" />
            <asp:Parameter Name="idproc" Type="Int32" />
        </UpdateParameters>
         </asp:SqlDataSource>
    
        </div>

    <div id="bids_div" runat="server" visible="false">

        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bidID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="bidID" HeaderText="Κωδικός Προσφοράς" InsertVisible="False" ReadOnly="True" SortExpression="bidID" />
                <asp:BoundField DataField="procurementID" HeaderText="Κωδικός Διαγωνισμού" SortExpression="procurementID" />
                <asp:BoundField DataField="company" HeaderText="Επιχείρηση" SortExpression="company" />
                <asp:BoundField DataField="bidprice" HeaderText="Τιμή Προσφοράς" SortExpression="bidprice" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:eProcurementDBConnectionString %>" SelectCommand="SELECT * FROM [Bids] WHERE ([procurementID] = @procurementID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="procurementID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        </div>
</asp:Content>

