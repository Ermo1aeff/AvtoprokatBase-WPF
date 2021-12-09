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

namespace Avtoprokat
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ShowModelPage(object sender, RoutedEventArgs e)
        {
            AvtoprokatFrame.Navigate(new Pages.ModelPage());
        }

        private void ShowMakePage(object sender, RoutedEventArgs e)
        {
            AvtoprokatFrame.Navigate(new Pages.MakePage());
        }

        private void AddElement(object sender, RoutedEventArgs e)
        {

        }

        private void DeleteElement(object sender, RoutedEventArgs e)
        {

        }
    }
}
