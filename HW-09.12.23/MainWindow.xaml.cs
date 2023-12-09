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
using static System.Net.WebRequestMethods;

namespace HW_09._12._23
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

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            if(SearchText.Text.Length>0) 
            {
                string googleUrl = $"https://www.google.com/search?q={SearchText.Text}";
                string bingUrl = $"https://www.bing.com/search?q={SearchText.Text}rdr=1&rdrig=5999441ABE7743AC85F1E4F3223E34D1";
                switch (GetSelectedSearchEngine()) 
                {
                    case "G":
                        {
                            
                            GoogleWebBrowser.Navigate(new Uri(googleUrl));
                        }
                        break;
                    case "B":
                        {
                            
                            BingWebBrowser.Navigate(new Uri(bingUrl));
                        }
                        break;
                    case "Both":
                        {
                            GoogleWebBrowser.Navigate(new Uri(googleUrl));
                            BingWebBrowser.Navigate(new Uri(bingUrl));
                        }
                        break;
                    default:
                        {
                            MessageBox.Show("Ви не обрали жодну пошукову систему. Оберіть одну або обидві та спробуйте знову");
                        } break;
                }
            }
            else
            {
                MessageBox.Show("Вы не ввели поисковый запрос!");
            }
        }

        private string GetSelectedSearchEngine()
        {
            if(GoogleRadioButton.IsChecked == true) 
            {
                return "G";
            }
            else if (BingRadioButton.IsChecked == true) 
            {
                return "B";
            }
            else if (BothRadioButton.IsChecked==true) 
            {
                return "Both";
            }
            else
            {
                return null;
            }
        }
    }
}
