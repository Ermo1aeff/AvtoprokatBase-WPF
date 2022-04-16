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

namespace Avtoprokat.Pages
{
    /// <summary>
    /// Interaction logic for RentalPage.xaml
    /// </summary>
    public partial class RentalPage : Page
    {
        public RentalPage()
        {
            InitializeComponent();
            DataContext = this;
            Rental.ItemsSource = MakeSource.entities.rental_car.ToList();
        }
    }
}
