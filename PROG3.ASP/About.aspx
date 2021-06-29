<%@ Page Title="TP4 - ASP - PROG3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PROG3.ASP.About" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
     <div style="padding-top: 2rem">
        <div id="mensajePrimero" runat="server">
            <h3 id="mensaje" style="color: darkslateblue">Hola Mundo - Es la primera vez que se ha cargado la página</h3>
        </div>

        <asp:Label ID="lblMensajeSegundo" runat="server" Text="Mensaje vacío" ForeColor="Purple" Font-Size="Medium"></asp:Label>
    </div>
    <div>
        <asp:Label ID="lblRecargas" runat="server" ForeColor="DarkRed" Font-Size="Medium"></asp:Label>
    </div>
    <div>
        <asp:Label ID="lblUsuarios" runat="server" ForeColor="DarkGreen" Font-Size="Medium"></asp:Label>
    </div>
    <asp:Button ID="btnPostBack" runat="server" Text="Recargar Form" />
</asp:Content>
