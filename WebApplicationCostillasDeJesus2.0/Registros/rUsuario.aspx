﻿<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="rUsuario.aspx.cs" 
    Inherits="WebApplicationCostillasDeJesus2._0.Registros.rUsuario" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">Registro de Usuarios</div>

        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

                <%--ID--%>
                <div class="form-group">
                    <label for="IDTextBox" class="col-md-3 control-label input-sm">ID: </label>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                        <asp:TextBox ID="IDTextBox" runat="server" ReadOnly="True" placeholder="0" class="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                        <asp:LinkButton ID="BusquedaButton" CssClass="btn btn-info btn-block btn-md" data-toggle="modal" data-target="#myModal" CausesValidation="False" runat="server" Text="<span class='glyphicon glyphicon-search'></span>" PostBackUrl="~/Consultas/cCategorias.aspx" />
                    </div>
                </div>

                <%--Nombre--%>
                <div class="form-group">
                    <label for="NombreTextBox" class="col-md-3 control-label input-sm">Nombre</label>
                    <div class="col-md-8">
                        <asp:TextBox Nombre="NombreTextBox" runat="server" 
                            Class="form-control input-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator Nombre="RFVNombre" runat="server" MaxLength="200" 
                            ControlToValidate="NombreTextBox" 
                            ErrorMessage="Campo Nombre obligatorio" ForeColor="Red" 
                            Display="Dynamic" SetFocusOnError="True" 
                            ToolTip="Campo Nombre obligatorio">Por favor llenar el campo Nombre
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--Usuario--%>
                <div class="form-group">
                    <label for="UsuarioTextBox" class="col-md-3 control-label input-sm">Usuario: </label>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                        <asp:TextBox Usuario="UsuarioTextBox" runat="server" ReadOnly="True" placeholder="0" class="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                    </div>
                </div>

                <%--Contraseña--%>
                <div class="form-group">
                    <label for="ContraseñaTextBox" class="col-md-3 control-label input-sm">Contraseña: </label>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                        <asp:TextBox Usuario="ContraseñaTextBox" runat="server" ReadOnly="True" placeholder="0" class="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                    </div>
                </div>

            <div class="col-md-12">
                <asp:ValidationSummary runat="server" ID="SumaryValidation"
                    ForeColor="red"
                    DisplayMode="BulletList"
                    ShowSummary="true"
                    EnableClientScript="True"
                    Font-Bold="False"
                    CssClass=" alert alert-danger" />
            </div>

            <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
        </div>

        <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">

                    <asp:Button Text="Nuevo" class="btn btn-warning btn-sm" runat="server" ID="NuevoButton" OnClick="NuevoButton_Click" />
                    <asp:Button Text="Guardar" class="btn btn-success btn-sm" runat="server" ID="GuadarButton" OnClick="GuadarButton_Click" />
                    <asp:Button Text="Eliminar" class="btn btn-danger btn-sm" runat="server" ID="EliminarButton" OnClick="EliminarButton_Click" />

                </div>
            </div>

        </div>
    </div>

</asp:Content>

