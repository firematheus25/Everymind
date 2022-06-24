using System;
using System.Collections.Generic;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

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
             MessageBox.Show("Teste");
        }
    }
}
