
using System;
using System.Globalization;
using System.Net.Sockets;
using System.Windows.Data;

namespace Netra.Agent.Service.Control_Panel.Converters
{
    public class AddressFamilyToText : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            switch (value.ToString())
            {
                case "InterNetwork":
                    {
                        return "IPv4";
                      
                    }
                default:
                    return "IPv6";
            }
         
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            switch (value.ToString())
            {
                case "IPv4":
                    {
                        return AddressFamily.InterNetwork;
                    }
                default:
                    return AddressFamily.InterNetworkV6;
            }
        }
    }
}
