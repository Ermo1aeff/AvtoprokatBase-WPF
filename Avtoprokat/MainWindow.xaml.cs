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

        private void ShowRentalPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new Pages.RentalPage());
        }

        private void ShowRenterPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new Pages.RenterPage());
        }

        private void ShowCarNumPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new Pages.CarNumPage());
        }

        private void ShowCarPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new Pages.CarPage());
        }

        private void ShowModelPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new Pages.ModelPage());
        }

        private void ShowMakePage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new Pages.MakePage());
        }

        private void ShowDiscountPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new Pages.DiscountPage());
        }
    }
}
