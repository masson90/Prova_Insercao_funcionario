using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insercao_funcionario
{
    public partial class Cadastros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            

            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into funcionarios
                                    (nom_func, sex_func, dat_nasc, num_cate_trab, 
                                    tel_func, cel_func, mai_func, end_func, num_casa)
                                    values
                                    (nom_func, @sex_func, @dat_nasc, @num_cate_trab, 
                                    @tel_func, @cel_func, @mai_func, @end_func,
                                    @num_casa)";
                cmd.Parameters.AddWithValue("nom_func", txtNome.Text);
                cmd.Parameters.AddWithValue("sex_func", txtSexo.Text);
                cmd.Parameters.AddWithValue("dat_nasc", txtNasc.Text);
                cmd.Parameters.AddWithValue("num_cate_trab", txtCarteira.Text);
                cmd.Parameters.AddWithValue("tel_func", txtTel.Text);
                cmd.Parameters.AddWithValue("cel_func", txtCel.Text);
                cmd.Parameters.AddWithValue("mai_func", txtEmail.Text);
                cmd.Parameters.AddWithValue("end_func", txtEndereco.Text);
                cmd.Parameters.AddWithValue("num_casa", txtNcasa.Text);

                Conexao.Conectar();
                cmd.ExecuteNonQuery();
                lblResultado.CssClass = "text-success";
                lblResultado.Text = "Dados cadastrados com suxexuyuyuyuyu!";

                
            }
            catch (Exception ex)
            {
                lblResultado.Text = $"falha: {ex.Message}";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}