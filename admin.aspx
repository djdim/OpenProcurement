<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">

    <h3>Λογαριασμός Διαχειριστή</h3>
    <asp:Button ID="Button1" runat="server" Text="Νέος Διαγωνισμός" visible="true" OnClick="Button1_Click" />
    <asp:Button ID="Button4" runat="server" Text="Προβολή στοιχείων εταιριών" visible="true" OnClick="Button4_Click" />

    <div runat="server" id="DivDiagwnismos" visible="false" >
    <asp:Table ID="Table1" runat="server" Height="200px" Width="450px">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Ονομασία</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="TextBox1" runat="server"> </asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Αριθμός Πρωτοκόλλου</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </asp:TableCell>
         </asp:TableRow>
                <asp:TableRow runat="server">
            <asp:TableCell runat="server">Νοσοκομείο</asp:TableCell>
            <asp:TableCell runat="server"> <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>401 Γενικό Στρατιωτικό Νοσοκομείο</asp:ListItem>
                <asp:ListItem>"Άγιος Σάββας" Γενικό Νοσοκομείο Αθηνών</asp:ListItem>
                <asp:ListItem>"Ασκληπιείο" Βούλας</asp:ListItem>
                <asp:ListItem>"Ευαγγελισμός" Γενικό Νοσοκομείο Αθηνών</asp:ListItem>
                <asp:ListItem>"Ιπποκράτειο" Γενικό Νοσοκομείο Αθηνών</asp:ListItem>
                <asp:ListItem>"Λαϊκό" Γενικό Νοσοκομείο Αθηνών</asp:ListItem>
                <asp:ListItem>"ΚΑΤ" Γενικό Νοσοκομείο Αττικής</asp:ListItem>
                <asp:ListItem>"Τζάνειο" Γενικό Νοσοκομείο Πειραιά</asp:ListItem>
                <asp:ListItem>"Σωτηρία" Γενικό Νοσοκομείο Νοσημάτων Θώρακος</asp:ListItem>
                <asp:ListItem>"Αρεταίειο" Νοσοκομείο - Εθνικό Καπποδιστριακό Πανεπιστήμιο Αθηνών</asp:ListItem>


            </asp:DropDownList> </asp:TableCell>
        </asp:TableRow>
                <asp:TableRow runat="server">
            <asp:TableCell runat="server">Τύπος προμήθειας</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> </asp:TableCell>
              <asp:tablecell runat="server"></asp:tablecell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Είδος</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> </asp:TableCell>
            <asp:tablecell runat="server"></asp:tablecell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Ποσότητα</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox> </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Ειδικές Προδιαγραφές</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox> </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Ημερομηνία Λήξης</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox> </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Δημιουργία Διαγωνισμού" OnClick="Button2_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label>
</asp:Content>

