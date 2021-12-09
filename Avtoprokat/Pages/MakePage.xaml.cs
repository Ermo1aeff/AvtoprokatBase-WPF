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
    /// Interaction logic for MakePage.xaml
    /// </summary>
    public partial class MakePage : Page
    {
        public MakePage()
        {
            InitializeComponent();
            DataContext = this;
            MakeCar.ItemsSource = MakeSource.entities.make_car.ToList();
        }
    }
}
