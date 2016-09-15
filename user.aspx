<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">


    <div id="DivGridview" runat="server" >
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
               <Columns>
                   <asp:CommandField ShowSelectButton="True" SelectText="Επιλογή" />
            <asp:BoundField DataField="idproc" HeaderText="A/A" InsertVisible="False" ReadOnly="True" SortExpression="idproc" />
            <asp:BoundField DataField="name" HeaderText="Ονομασία" SortExpression="name" />
            <asp:BoundField DataField="protocol" HeaderText="Αριθμ. Πρωτοκ." SortExpression="protocol" />
            <asp:BoundField DataField="hospital" HeaderText="Νοσοκομ. Μονάδα" SortExpression="hospital" />
            <asp:BoundField DataField="category" HeaderText="Κατηγορία" SortExpression="category" />
            <asp:BoundField DataField="type" HeaderText="Τύπος" SortExpression="type" />
            <asp:BoundField DataField="amount" HeaderText="Ποσότητα" SortExpression="amount" />
            <asp:BoundField DataField="specifications" HeaderText="Προδιαγραφές" SortExpression="specifications" />
            <asp:BoundField DataField="creation_date" HeaderText="Ημερομ. Δημιουργ." SortExpression="creation_date" />
            <asp:BoundField DataField="expiration_date" HeaderText="Ημερομ. Λήξης" SortExpression="expiration_date" />
        </Columns>
               <HeaderStyle ForeColor="#666666" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eProcurementDBConnectionString %>" SelectCommand="SELECT * FROM [procurements]"></asp:SqlDataSource>
    
    </div>
    
    <div id="DivCreatebid" runat="server"  visible="false" >
        <asp:Button ID="Back" runat="server" Text="Πίσω" OnClick="Back_Click" />


        <br />
        <br />
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><h3>Καταχώρηση Προσφοράς</h3></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">A/A Προκύρηξης:</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Ονομασία:</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Ονομασία εταιρίας:</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Τιμή:</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Button ID="addnewbid" runat="server" Text="Πλειοδότηση" OnClick="addnewbid_click" /></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
         

    </div>
    <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
</asp:Content>

