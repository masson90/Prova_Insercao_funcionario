<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastros.aspx.cs" Inherits="Insercao_funcionario.Cadastros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="text-center text-primary">
                <h2>Cadastro de Funcionário</h2>
            </div>

            <div class="row" style="margin-top: 15px">
                <div class="col-md-6">
                    <label>Nome:</label>
                    <asp:RequiredFieldValidator ID="rfvNome" ControlToValidate="txtNome"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNome" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Sexo:</label>
                    <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="txtSexo"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtSexo" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-3">
                    <label>Data de Nascimento:</label>
                    <asp:RequiredFieldValidator ID="rfvNasc" ControlToValidate="txtNasc"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNasc" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row" style="margin-top: 15px">                

                <div class="col-md-6">
                    <label>Numero da Carteira:</label>
                    <asp:RequiredFieldValidator ID="rfvCarteira" ControlToValidate="txtCarteira"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCarteira" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-3">
                    <label>Telefone Fixo:</label>
                    <asp:RequiredFieldValidator ID="rfvTel" ControlToValidate="txtTel"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtTel" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-3">
                    <label>Telefone Celular:</label>
                    <asp:RequiredFieldValidator ID="rfvCel" ControlToValidate="txtCel"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCel" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-5">
                    <label>E-mail:</label>
                    <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-5">
                    <label>Endereço:</label>
                    <asp:RequiredFieldValidator ID="rfvEndereco" ControlToValidate="txtendereco"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtEndereco" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-2">
                    <label>Número da casa:</label>
                    <asp:RequiredFieldValidator ID="rfvNcasa" ControlToValidate="txtNcasa"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNcasa" runat="server" MaxLength="6" CssClass="form-control"></asp:TextBox>
                </div>

            </div>           

            <div class="row" style="margin-top: 15px">
                <div class="col-md-12 text-center">
                    <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                </div>
            </div>

            <div class="row" style="margin-top: 15px">
                <div class="col-md-12 text-right">
                    <asp:Label ID="lblResultado" CssClass="text text-danger" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>
