<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_companies.aspx.cs" Inherits="view_companies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="companyID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="companyID" HeaderText="Α/α Επιχείρησης" InsertVisible="False" ReadOnly="True" SortExpression="companyID" />
            <asp:BoundField DataField="name" HeaderText="Όνομα Επιχείρησης" SortExpression="name" />
            <asp:BoundField DataField="afm" HeaderText="Α.Φ.Μ." SortExpression="afm" />
            <asp:BoundField DataField="doy" HeaderText="Δ.Ο.Υ." SortExpression="doy" />
            <asp:BoundField DataField="location" HeaderText="Τοποθεσία" SortExpression="location" />
            <asp:BoundField DataField="phone" HeaderText="Τηλεγωνο Επικοινωνίας" SortExpression="phone" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eProcurementDBConnectionString %>" SelectCommand="SELECT * FROM [Companies]"></asp:SqlDataSource>

</asp:Content>

