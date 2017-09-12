using System.Windows;
using System.Windows.Controls;

namespace Netra.Agent.Service.Control_Panel
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Config config;
        public Config PanelConfig
        {
            get { config = new Config();
              Config temp=  ConfigHelper.ReadConfigDetails("Config.json");
                if (temp != null)
                {
                    if (temp.keyConfig != null)
                        config.keyConfig = temp.keyConfig;
                    if (temp.logConfig != null)
                        config.logConfig = temp.logConfig;
                    if (temp.logCollectionSettings != null)
                        config.logCollectionSettings = temp.logCollectionSettings;
                    config.AgentIp = temp.AgentIp;
                    config.logEncryptionEnabled = temp.logEncryptionEnabled;
                }
                return config;
                 }
            set { config = value; }
        }
        public MainWindow()
        {
            InitializeComponent();            
            this.DataContext = PanelConfig;
          
        }
        private void SaveConfig(object sender, RoutedEventArgs e)
        {
           bool status= ConfigHelper.WriteConfig(config, "Config.json");
            if (status)
                MessageBox.Show("Records Saved Successfully");
            else
                MessageBox.Show("Records Saving Failed");
        }
        
    }
}
