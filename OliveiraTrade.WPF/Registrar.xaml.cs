using OliveiraTrade.Domain.Entities;
using OliveiraTrade.WPF.Services;
using System;
using System.Globalization;
using System.Windows;

namespace OliveiraTrade.WPF
{
    /// <summary>
    /// Interaction logic for Registrar.xaml
    /// </summary>
    public partial class Registrar : Window
    {
        public Registrar()
        {
            InitializeComponent();
            cbbSexo.Items.Add("Masculino");
            cbbSexo.Items.Add("Feminino");
        }

        private void BtnUsuario_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void BtnFechar_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void BtnMinimizar_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        private void BtnRegistrar_Click(object sender, RoutedEventArgs e)
        {
            BuildPessoa();
        }


        private async void BuildPessoa()
        {
            var cultureInfo = new CultureInfo("pt-BR");

            var pessoa = new Pessoa();
            pessoa.Nome = txtNome.Text;
            pessoa.Sexo = cbbSexo.SelectedIndex;
            pessoa.CPF = txtCpf.Text;
            pessoa.Nascimento = DateTime.Parse(txtNascimento.Text, cultureInfo);
            pessoa.Email = txtEmail.Text;
            pessoa.Senha = txtSenha.Password;

            var genericResult = await new HttpRequestMethods<Pessoa>().PostAsync(pessoa);

            if (genericResult.Success)
            {
                MessageBox.Show("Usuário cadastrado com sucesso.");
            }

            ClearCadastro();
        }


        private void ClearCadastro()
        {
            cbbSexo.SelectedIndex = -1;
            txtNome.Clear();
            txtEmail.Clear();
            txtCpf.Clear();
            txtSenha.Clear();
            txtNascimento.Text = txtNascimento.Text.Trim();
        }
    }
}
