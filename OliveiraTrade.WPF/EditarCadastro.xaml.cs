using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using OliveiraTrade.Domain.Entities;
using OliveiraTrade.WPF.Services;

namespace OliveiraTrade.WPF
{
    /// <summary>
    /// Interaction logic for EditarCadastro.xaml
    /// </summary>
    public partial class EditarCadastro : Window
    {
        private Pessoa _pessoa;

        public EditarCadastro()
        {
            InitializeComponent();
        }

        public EditarCadastro(Pessoa pessoa) : this()
        {
            cbbSexo.Items.Add("Masculino");
            cbbSexo.Items.Add("Feminino");
            _pessoa = pessoa;
            this.txtNome.SetBinding(TextBox.TextProperty, new Binding("Nome") { Source = _pessoa });
            this.cbbSexo.SelectedIndex = pessoa.Sexo;
            this.txtCpf.SetBinding(TextBox.TextProperty, new Binding("CPF") { Source = _pessoa });
            //this.txtNascimento.SetBinding(TextBox.TextProperty, new Binding("Nascimento") { Source = _pessoa });
            this.txtNascimento.Text = pessoa.Nascimento.ToString();
        }

        private void BtnMinimizar_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnFechar_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private async void btnEditar_Click(object sender, RoutedEventArgs e)
        {
            BuildUpdate();
        }

        private void BtnLogout_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private async void BuildUpdate()
        {
            var pessoa = new Pessoa();
            pessoa.Nome = txtNome.Text;
            pessoa.Sexo = cbbSexo.SelectedIndex;
            pessoa.CPF = txtCpf.Text;
            pessoa.Nascimento = DateTime.Parse(txtNascimento.Text);
            pessoa.Email = _pessoa.Email;
            pessoa.Senha = _pessoa.Senha;

            var genericResult = await new HttpRequestMethods<Pessoa>().PutAsync(pessoa);

            MessageBox.Show(genericResult.Message);
        }
    }
}
