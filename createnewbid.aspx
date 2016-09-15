<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="createnewbid.aspx.cs" Inherits="createnewbid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    

    Bids
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="idproc" HeaderText="idproc" SortExpression="idproc" />
            <asp:BoundField DataField="cur_date" HeaderText="cur_date" SortExpression="cur_date" />
            <asp:BoundField DataField="fin_date" HeaderText="fin_date" SortExpression="fin_date" />
            <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
            <asp:BoundField DataField="info" HeaderText="info" SortExpression="info" />
        </Columns>
</asp:GridView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eProcurementDBConnectionString %>" SelectCommand="SELECT * FROM [procurements]"></asp:SqlDataSource>


</asp:Content>