<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
    Εγγραφή νέου χρήστη/επιχείρησης
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    
<div runat="server" id="DivSignup" >
<h3>Συμπληρώστε τα στοιχεία της επιχείρησής σας</h3>
    <asp:table ID="Table1" runat="server">
        <asp:TableRow runat="server">
                <asp:TableCell runat="server">Όνομα χρήστη:</asp:TableCell>
                <asp:TableCell runat="server"> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Κωδικός:</asp:TableCell>
                <asp:TableCell runat="server"> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  ></asp:TextBox>                   
                <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Επαναεισαγωγή κωδικού:</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox3" runat="server" TextMode="Password" ></asp:TextBox>                   
                <asp:Label ID="Label3" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Email:</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>                   
                <asp:Label ID="Label4" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow runat="server">
                <asp:TableCell runat="server">Όνομα εταιρίας:</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>                   
                <asp:Label ID="Label8" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
             </asp:TableRow>
                    <asp:TableRow runat="server">
                <asp:TableCell runat="server">ΑΦΜ:</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox>                   
                <asp:Label ID="Label9" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
             </asp:TableRow>
                    <asp:TableRow runat="server">
                <asp:TableCell runat="server">ΔΟΥ:</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>                   
                <asp:Label ID="Label10" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
                
                    <asp:TableRow runat="server">
                <asp:TableCell runat="server">Τοποθεσία:</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox9" runat="server" ></asp:TextBox>                   
                <asp:Label ID="Label11" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
                    
                    <asp:TableRow runat="server">
                <asp:TableCell runat="server">Τηλέφωνο:</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox10" runat="server" ></asp:TextBox>                   
                <asp:Label ID="Label12" runat="server" ForeColor="#FF3300"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

    </asp:Table>
    <br />
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Εγγραφή" />
        <asp:Label ID="Label6" runat="server" ForeColor="#FF3300" ></asp:Label>
    </div>

    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    
    <a id="login_div1" runat="server" href="login.aspx" visible="false">σελίδα εισόδου</a>
    
</asp:Content>
