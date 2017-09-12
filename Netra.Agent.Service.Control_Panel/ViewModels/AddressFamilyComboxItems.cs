using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace Netra.Agent.Service.Control_Panel.ViewModels
{
    public static class AddressFamilyComboxItems
    {
        public static List<AddressItem> AddressItems= new List<AddressItem>() { new AddressItem() { IPAddressing = "IPv4" }, new AddressItem() { IPAddressing = "IPv6" } };
       
    

}
    public class AddressItem
    {
        public string IPAddressing { get; set; }
    }
}
