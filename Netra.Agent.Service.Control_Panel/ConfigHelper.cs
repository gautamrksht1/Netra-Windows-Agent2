using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace Netra.Agent.Service.Control_Panel
{
    public  class ConfigHelper
    {
        public static bool  IsIP6(string addr)
        {
            IPAddress ip;
            if (IPAddress.TryParse(addr, out ip))
            {
                return ip.AddressFamily == AddressFamily.InterNetworkV6;
            }
            else
            {
                return false;
            }
        }
        public static bool IsIP4(string addr)
        {
            IPAddress ip;
            if (IPAddress.TryParse(addr, out ip))
            {
                return ip.AddressFamily == AddressFamily.InterNetwork;
            }
            else
            {
                return false;
            }
        }
        public static Config ReadConfigDetails(string fileName)
        {
            Config config = null;
           
            var path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, fileName);
            if (File.Exists(path))
            {
                using (StreamReader reader = new StreamReader(path))
                {
                    string temp = reader.ReadToEnd();
                    config = (Config)JsonConvert.DeserializeObject(temp, typeof(Config));
                }
            }
            return config;
        }
        public static bool WriteConfig(Config config, string fileName)
        {
            bool result = false;
                var path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, fileName);

                using (StreamWriter writer = new StreamWriter(path, false))
                {
                    JsonSerializer serializer = new JsonSerializer();
                    serializer.NullValueHandling = NullValueHandling.Ignore;
                    using (JsonWriter Jwriter = new JsonTextWriter(writer))
                    {
                        serializer.Serialize(Jwriter, config);
                    }
                result = true;
                }
            return result;            
        }
    }
}
