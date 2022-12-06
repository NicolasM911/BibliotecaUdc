<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BIBLIOTECAUDC.PRESENTACION.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../Style1.css" />
    <title>UDC</title>
    <style type="text/css">
        .auto-style1 {
            height: 237px;
        }
    </style>
</head>
<body style="height: 590px">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/logoudc1.jpg" ImageAlign="Middle" Height="244px" Width="654px" />
        <div class="auto-style1">
            <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF0606" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Estudiante" Value="Estudiante"></asp:MenuItem>
                    <asp:MenuItem Text="Libro" Value="Libro"></asp:MenuItem>
                    <asp:MenuItem Text="Autor" Value="Autor"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="Lime" BorderColor="Black" />
            </asp:Menu>
            <center>
            <p>
                <asp:Label ID="Label11" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Apellido"></asp:Label>
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Fecha"></asp:Label>
                <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Genero"></asp:Label>
                <asp:TextBox ID="txtGenero" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="TipoDocumento"></asp:Label>
                <asp:TextBox ID="txtTpDocumento" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label6" runat="server" Text="#Documento"></asp:Label>
                <asp:TextBox ID="txtDocumento" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label8" runat="server" Text="Celular"></asp:Label>
                <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label9" runat="server" Text="Direccion"></asp:Label>
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label10" runat="server" Text="Programa"></asp:Label>
                <asp:TextBox ID="txtPrograma" runat="server"></asp:TextBox>
            </p>
            </center>
           <center> <asp:Button ID="btnADD" runat="server" OnClick="Button1_Click" Text="Agregar" /></center>
        </div>
    </form>
</body>
</html>
