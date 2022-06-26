using System;
using System.Windows;
using MaterialDesignThemes.Wpf;
using OliveiraTrade.Domain.Entities;
using OliveiraTrade.WPF.Services;

namespace OliveiraTrade.WPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }

        private void BtnLogar_Click(object sender, RoutedEventArgs e)
        {
            BuildLogin();
        }

        private async void BuildLogin()
        {
            var login = new Domain.Entities.Login();
            login.Email = txtEmail.Text;
            login.Senha = txtSenha.Password;

            var genericResult = await new HttpRequestMethods<Domain.Entities.Login>().LoginAsync(login);
            if (genericResult.Success)
            {
                var editaCadastro = new EditarCadastro((Pessoa)genericResult.Data);
                editaCadastro.ShowDialog();
            }
            else
            {
                MessageBox.Show(genericResult.Message);
            }
        }

        private void BtnFechar_Click(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void BtnMinimizar_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        private void BtnRegistrar_Click(object sender, RoutedEventArgs e)
        {
            var registrarWindow = new Registrar();
            registrarWindow.ShowDialog();
        }
    }
}
