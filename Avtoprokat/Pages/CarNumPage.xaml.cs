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
    /// Interaction logic for CarNumPage.xaml
    /// </summary>
    public partial class CarNumPage : Page
    {
        public CarNumPage()
        {
            InitializeComponent();
            DataContext = this;
            CarNum.ItemsSource = MakeSource.entities.registration_plates.ToList();
        }
    }
}
