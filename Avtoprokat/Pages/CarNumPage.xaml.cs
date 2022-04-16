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
using Avtoprokat.DataBase;

namespace Avtoprokat.Pages
{
    /// <summary>
    /// Interaction logic for CarNumPage.xaml
    /// </summary>
    public partial class CarNumPage : Page
    {
        private AvtoprokatEntities db;

        //описание вспомогательных переменных
        private int DlgMode = -1;
        private string Make_buf;
        private string Model_buf;
        private string RegPlates_buf;
        private string YearIssue_buf;

        public CarNumPage()
        {
            InitializeComponent();
            DataContext = this;
            CarNum.ItemsSource = MakeSource.entities.registration_plates.ToList();
            CarNumColumnChange.Width = new GridLength(0);
        }

        public void CarNumDlgLoad(bool b)
        {
            if (b == true)
            {
                CarNumColumnChange.Width = new GridLength(230);
                //Включаем кнопки
                CarNum.IsHitTestVisible = false;
                AddCarNumButton.IsEnabled = false;
                CopyCarNumButton.IsEnabled = false;
                EditCarNumButton.IsEnabled = false;
                DeleteCarNumButton.IsEnabled = false;
            }
            else
            {
                CarNumColumnChange.Width = new GridLength(0);
                //Выключаем кнопки
                CarNum.IsHitTestVisible = true;
                AddCarNumButton.IsEnabled = true;
                CopyCarNumButton.IsEnabled = true;
                EditCarNumButton.IsEnabled = true;
                DeleteCarNumButton.IsEnabled = true;
                DlgMode = -1;
            }
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            CarNumDlgLoad(true);
            DlgMode = 0;
            CarNum.SelectedItem = null;
            CarNumTitle.Content = "Добавить книгу";
            CarNumComboBoxMake.Text = "";
            CarNumComboBoxModel.Text = "";
            CarNumTextRegPlates.Text = "";
            CarNumTextYearIssue.Text = "";
        }

        private void Copy_Click(object sender, RoutedEventArgs e)
        {
            if (CarNum.SelectedItem != null)
            {
                CarNumDlgLoad(true);
                DlgMode = 0;
                CarNumTitle.Content = "Копировать - добавить книгу на основе выбранной";
                //использование буферных переменных для «отрыва» от данных выбранной строки (чтобы не сработал Binding)
                
                Make_buf = 
                Make_buf = CarNumComboBoxMake.Text;
                Model_buf = CarNumComboBoxModel.Text;
                RegPlates_buf = CarNumTextRegPlates.Text;
                YearIssue_buf = CarNumTextYearIssue.Text;
                //убрать фокус с выделенной строки
                CarNum.SelectedItem = null;
                CarNumComboBoxMake.Text = Make_buf;
                CarNumComboBoxModel.Text = Model_buf;
                CarNumTextRegPlates.Text = RegPlates_buf;
                CarNumTextYearIssue.Text = YearIssue_buf;
            }
            else
            {
                MessageBox.Show("Не выбрано ни одной строки!", "Сообщение", MessageBoxButton.OK);
            }

        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            if (CarNum.SelectedItem != null)
            {
                CarNumDlgLoad(true);
                CarNumTitle.Content = "Изменить экзепляр";
                CopyAddCommit.Content = "Изменить";
            }
            else
            {
                MessageBox.Show("Не выбрано ни одной строки!", "Сообщение", MessageBoxButton.OK);
            }
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Удалить запись?", "Внимание", MessageBoxButton.OKCancel, MessageBoxImage.Warning) == MessageBoxResult.OK)
            {
                MakeSource.entities.registration_plates.Remove((registration_plates)CarNum.SelectedItem);
                MakeSource.entities.SaveChanges();
            }
        }

        private void CarNumCommit_Click(object sender, RoutedEventArgs e)
        {
            var NewCarNum = new registration_plates();
            //NewCarNum.car_id = int.Parse(CarNumComboBoxModel.Text);
            NewCarNum.reg_plates = CarNumTextRegPlates.Text;
            if (DlgMode == 0)
            {
                MakeSource.entities.registration_plates.Add(NewCarNum);
            }
            MakeSource.entities.SaveChanges();
            CarNumDlgLoad(false);
        }

        private void CarNumRollback_Click(object sender, RoutedEventArgs e)
        {
            CarNumDlgLoad(false);
        }


    }
}