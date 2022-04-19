using System;
using System.Collections.Generic;
using System.IO;
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

namespace fmpg_gui
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            framps.Text = "6";
            fType.SelectedIndex = 0;
            frameSpeed.SelectedIndex = 0;
            FileNamefmt.Text = "%3d";

            extPng.IsChecked = true;
        }

        private void btCvt_Click(object sender, RoutedEventArgs e)
        {
            string strFps = framps.Text.ToString();
            string fileFmt = FileNamefmt.Text.ToString();
            if (extPng.IsChecked==true)
            {
                fileFmt += ".png";
            }
            else
            {
                fileFmt += ".jpg";
            }
            string fmSpd = frameSpeed.Text.ToString();
            string outName = FileNameOut.Text.ToString();

            if(strFps.Length * fileFmt.Length * fmSpd.Length* outName.Length==0)
            {
                MessageBox.Show("has empty inputs");
            }
            else if ( !int.TryParse(strFps,out _))
            {
                MessageBox.Show("Framps needs number");
            }
            else
            {
                string cmd = string.Format("/c ffmpeg -r {0} -i {1} -r {2} {3}.mp4", strFps, fileFmt, fmSpd, outName);
                System.Diagnostics.Process.Start("cmd.exe", cmd);
            }
        }

        private void btRename_Click(object sender, RoutedEventArgs e)
        {
            string fileType = fType.Text.ToString();
            string renameStr="";
            int cnt = 1;

            DirectoryInfo info = new DirectoryInfo(".");
            FileInfo[] files = info.GetFiles(fileType).OrderBy(p => p.CreationTime).ToArray();
            foreach (FileInfo file in files)
            {
                if (fileType.Equals("*.png"))
                {
                    renameStr = string.Format("{0:000}.png", cnt);
                }
                else if (fileType.Equals("*.jpg"))
                {
                    renameStr = string.Format("{0:000}.jpg", cnt);
                }
                else
                {
                    renameStr = file.Name;
                }
                
                System.IO.File.Move(file.Name,renameStr);
                cnt++;
            }
            MessageBox.Show("rename done");
        }
    }
}
