<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" UnobtrusiveValidationMode="None"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
        
       <h3>Συμπληρώστε το 'Ονομα Χρήστη και τον Κωδικό Πρόσβασής</br> σας για να εισέλθετε</h3>
            <asp:Table ID="Table1" runat="server" Height="90px" Width="381px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Όνομα Χρήστη:</asp:TableCell>
                <asp:TableCell runat="server" Wrap="False"> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Κωδικός Πρόσβασης:</asp:TableCell>
                <asp:TableCell runat="server" Wrap="False"> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>                    
                <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
       
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Είσοδος" />
        <asp:Label ID="Label3" runat="server" ForeColor="Red" ></asp:Label>
        &nbsp;
</asp:Content>
    
       

