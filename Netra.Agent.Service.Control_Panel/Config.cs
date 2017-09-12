using System;
using System.ComponentModel;
using System.Net.Sockets;

namespace Netra.Agent.Service.Control_Panel
{
    public class Config
    {
        public TerminalNode logConfig { get; set; }
        public TerminalNode keyConfig { get; set; }
        public bool logEncryptionEnabled { get; set; }
        public string AgentIp { get; set; }
        public LogCollectionSettings logCollectionSettings { get; set; }

      
        public static int Errors { get; set; }
        public Config()
        {
            logConfig = new TerminalNode();
            keyConfig = new TerminalNode();
            logCollectionSettings = new LogCollectionSettings();
        }
              
    }
    public class TerminalNode
    {      
        public string IpAddress { get; set; }  // = IPAddress.Parse("127.0.0.1");
        public int port { get; set; }
        public AddressFamily addressFamily { get; set; }
        public ProtocolType protocolType { get; set; }
    }
    public class LogCollectionSettings
    {
        public WindowsLogLevels SystemlogLevels { get; set; }
        public WindowsLogLevels ApplicationlogLevels { get; set; }
        public WindowsLogLevels SetuplogLevels { get; set; }
        public WindowsLogLevels SecuritylogLevels { get; set; }

        public LogCollectionSettings()
        {
            SystemlogLevels = new WindowsLogLevels();
            ApplicationlogLevels = new WindowsLogLevels();
            SetuplogLevels = new WindowsLogLevels();
            SecuritylogLevels = new WindowsLogLevels();
        }

    }
    public class WindowsLogLevels
    {
        public bool Error { get; set; }
        public bool Warning { get; set; }
        public bool Information { get; set; }
        public bool FailureAudit { get; set; }
        public bool SuccessAudit { get; set; }
        public string Source { get; set; }
    }
    
}
