   M S B A M L   `   `   `  ����\  XNetra.Agent.Service.Control_Panel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:Netra.Agent.Service.Control_Panel!Netra.Agent.Service.Control_Panel  5   	   k:clr-namespace:Netra.Agent.Service.Control_Panel.Converters,Netra.Agent.Service.Control_Panel.Converters  5   	   k:clr-namespace:Netra.Agent.Service.Control_Panel.ViewModels,Netra.Agent.Service.Control_Panel.ViewModels  5   	   m;clr-namespace:Netra.Agent.Service.Control_Panel.Validations-Netra.Agent.Service.Control_Panel.Validations  5	   	   2    ,Netra.Agent.Service.Control_Panel.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Alocal/clr-namespace:Netra.Agent.Service.Control_Panel     5   	   Q
Converters:clr-namespace:Netra.Agent.Service.Control_Panel.Converters     5   	   Q
ViewModels:clr-namespace:Netra.Agent.Service.Control_Panel.ViewModels     5   	   PValidate;clr-namespace:Netra.Agent.Service.Control_Panel.Validations     5	   	     � Title$  Agent Configuration��5   	   $��392.267��6%   $��867.719��66    � WindowStartupLocation$ CenterScreen=�6F    � 	Resources 5      F   @Netra.Agent.Service.Control_Panel.Converters.AddressFamilyToText   AddressFamilyToText  validationErrorTemplate �� Orientation �� TextAlignment � ToolTip �� ElementName �� Path ��Name��%�  &	        &	        5   
   6)   �� 5   
   .R�5      ]� .+�5      �� $ 
Horizontal=�6   $	��Top=�66   .+�5      � $��12��6   $��12��6&   .+�5      A� $��12��6"   $��12��6-   
���  ��$��Center=�5      $��Center=�5      5      �� 5      
�������$��Heavy"�67   $��8(�5      $��Center=�6   $��Center=�5      $ Center=�6(    5!      �� $ ErrorAdorner��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�X5$      5%      �� 5&      
���  ��$��2,0,0,0q�61   ��5(      �� $ ErrorAdorner��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5+      5,      �� 5-      $ ErrorAdorner��5/   	   6"   50      51      52      	 � DataContext	 53      .   (Netra.Agent.Service.Control_Panel.Config  54   
   .��56      � -   5        $��MainGrid��56      $��0,0,10,4q�6   .+�57   
   �� $
��Left=�6   $	��315��60   $��	10,10,0,0q�6=   $	��Top=�6P   $	��821��6h   .@�58      �� $��Log Settings��6   .��59      � -   5        $��LogSettingsGrid��59      ���	#FFE5E5E5.+�5;      �� $��	Server IP��6   $
��Left=�60   $��	22,23,0,0q�6K   $	��Top=�6^   �� 5<      $��Server Port NO��6   $
��Left=�65   $��	22,56,0,0q�6P   $	��Top=�6c   �� 5=      $��Protocol��6   $
��Left=�6/   $��	24,93,0,0q�6J   $	��Top=�6]   �� 5>      $��Address Family��6   $
��Left=�65   $��
22,128,0,0q�6P   $	��Top=�6d   �� 5?      -   5        $��LogServerIP��5?      $
��Left=�61   $��23��6L   $��
145,23,0,0q�6X   
 �� TextWrapping$

 Wrap=�6l   $	��Top=�6�   $	��120��6�    =� ErrorTemplate# [ 6�   .��6�   ��5@      �� 5A      $ logConfig.IpAddress�6&    �� Mode$ TwoWay=�6A    �� UpdateSourceTrigger$ 	LostFocus=�5B       �� ValidationRules 5C   "   B   <Netra.Agent.Service.Control_Panel.Validations.MandatoryRules  5D   &   6@   A   ;Netra.Agent.Service.Control_Panel.Validations.IPAddressRule  5E   &   6?   5G      .��5H   (   5I      �� 5J      $
��Left=�6   $��23��69   $��
145,59,0,0q�6E   $

 Wrap=�6Y   $	��Top=�6m   $	��120��6�   # [ 6�   .��6�   ��5K      �� 5L      $ logConfig.port�6&   $ TwoWay=�6<   $ 	LostFocus=�5M       5N   &     5O   *   6D   5Q   #   .��5R   (   5S      �� 5T      -   5        $��LogAddressFamilyList��5T      $
��Left=�6;   $��145,132,0,0q�6V   $	��Top=�6k   $	��120��6�    �� SelectedValuePath$ Content��6�    �� SelectedValue 5U      �� 5V      $ logConfig.addressFamily�6&   $ TwoWay=�6E   $ PropertyChanged=�6S    �� 	Converter# [  6y    5W   "     5X   &   ,  &System.Windows.Controls.ValidationRule   ValidationStep$ ConvertedProposedValue=�6>   5Z      .@�5\      �� $
��IPv4��6'   �� 5]      $
��IPv6��6'   5_      �� 5`      -   5         ��Name$ comboBox��5`      $
��Left=�61   $��26��6L   $��
145,94,0,0q�6X   $	��Top=�6l   $	��119��6�   $ Content��6�    5a      �� 5b      $ logConfig.protocolType�6&   $ TwoWay=�6D   $ PropertyChanged=�6R    5c   "     5d   &   $ ConvertedProposedValue=�6>   5f      .@�5h      �� $	��Udp��6'   �� 5i      $	��Tcp��6'   5j      �� 5k      -   5         ��Name$ Error��5k       $
��Left=�6/   $��53��6J   $��
30,154,0,0q�6V   $
��Wrap=�6j   $	��Top=�6�   $	��337��6�   ��6~   �� *%#(Validation.Errors)[0].ErrorContent+$ LogServerIP��6�   5l      5n      �� 5o      $��Security Settings��6   .��5p      � ���	#FFE5E5E5$��0,0,2,0q�6.   .+�5q      �� $��Key Management Settings��6   $
��Left=�6@   $	��238��6[   $��	10,10,0,0q�6h   $	��Top=�6{   $	��600��6�   .��5r      � $
��Left=�6   $	��199��6:   $��20,7,0,0q�6G   $	��Top=�6Y   $	��559��6q   .+�5s      �� $��	Server IP��6$   $
��Left=�68   $��	22,20,0,0q�6S   $	��Top=�6f   $��26��6~   $��56��6�   �� 5t      $��Server Port No��6$   $
��Left=�6=   $��	22,51,0,0q�6X   $	��Top=�6k   $��26��6�   $��87��6�   �� 5u      $��Protocol��6$   $
��Left=�67   $��	22,82,0,0q�6R   $	��Top=�6e   $��26��6}   $��54��6�   �� 5v      $��Address Family��6$   $
��Left=�6=   $��
22,113,0,0q�6X   $	��Top=�6l   $��26��6�   $��89��6�   �� 5w      $
��Left=�6&   $��23��6A   $��
183,24,0,0q�6M   $

 Wrap=�6a   $	��Top=�6u   $	��120��6�   # [ 6�   .��6�   ��5x   "   �� 5y   &   $ keyConfig.IpAddress�6.   $ TwoWay=�6I   $ PropertyChanged=�5z       5{   *     5|   .   6H     5}   .   6G   5   '   .��5�   0   5�      �� 5�      $
��Left=�6&   $��23��6A   $��
183,51,0,0q�6M   $

 Wrap=�6a   $	��Top=�6u   $	��120��6�   # [ 6�   .��6�   ��5�   "   �� 5�   &   $ keyConfig.port�6.   $ TwoWay=�6D   $ PropertyChanged=�5�       5�   *     5�   .   6H   5�   '   .��5�   0   5�      �� 5�   "   $
��Left=�6+   $��19��6F   $��
183,82,0,0q�6R   $	��Top=�6f   $	��120��6~   $ Content��6�    6�   �� *keyConfig.protocolType+$ TwoWay=�$ PropertyChanged=�.@�5�   "   �� $	��Tcp��6/   6?   5�      �� 5�      $(��"Key Sharing uses TCP protocol only��6$   $
��Left=�6Q   $��26��6l   $��
325,82,0,0q�6x   $	��Top=�6�   $	��196��6�   �� 5�      $
��Left=�6'   $��20��6B   $��184,119,0,0q�6N   $	��Top=�6c   $	��119��6{   $ Content��6�    6�   �� *keyConfig.addressFamily+$ TwoWay=�$ PropertyChanged=�# [  .@�5�   "   �� $
��IPv4��6/   �� 5�   "   $
��IPv6��6/   5�      �� 5�      -   5         ��Name$ EncryptFlag��5�   '   $/��)Encrypt Log data before sending to server��6<   $
��Left=�6p   $��18��6�   $��184,159,0,0q�6�   $	��Top=�6�   $	��247��6�   5�      5�      5�      5�      �� 5�      $��Agents Details��6   $
��Left=�6.   $��20��6I   $	��Top=�6U   $��95��6m   $��-2,-2,-39,0q�6x   .��5�      � ���	#FFE5E5E5$��0,0,2,0q�6.   .+�5�      �� $��Agent IP Address��6   $
��Left=�67   $��28��6R   $��	29,32,0,0q�6^   $	��Top=�6q   $	��125��6�   �� 5�      $
��Left=�6   $��21��69   $��
168,32,0,0q�6E   $

 Wrap=�6Y   $	��Top=�6n   $	��141��6�   # [ 6�   .��6�   ��5�      �� 5�      $ AgentIp�6&   $ TwoWay=�65   $ PropertyChanged=�6C    5�   "     5�   &   6@     5�   &   6?   5�      .��5�   (   5�      5�      5�      �� 5�      $��Log Source Settings��6   $
��Left=�63   $��20��6N   $	��Top=�6Z   $	��133��6r   $��-2,-2,-77,0q�6~   .��5�      � ���	#FFE5E5E5.+�5�      �� $��System��6   $
��Left=�6-   $��30��6H   $��	10,23,0,0q�6T   $	��Top=�6g   $��51��6   �� 5�      $��Application��6   $
��Left=�62   $��26��6M   $��	10,66,0,0q�6Y   $	��Top=�6l   $��72��6�   �� 5�      $��Security��6   $
��Left=�6/   $��29��6J   $��
10,107,0,0q�6V   $	��Top=�6j   $��58��6�   �� 5�      $��Setup��6   $
��Left=�6,   $��26��6G   $��
10,152,0,0q�6S   $	��Top=�6g   $��58��6   �� 5�      -   5        $��SystemError��5�      $��Error��62   $
��Left=�6B   $��20��6]   $��
104,23,0,0q�6i   $	��Top=�6}   $��60��6�    d� 	IsChecked 6�   �� *-+logCollectionSettings.SystemlogLevels.Error+$ TwoWay=�$ PropertyChanged=��� 5�      -	   5        $��SystemWarning��5�      $��Warning��64   $
��Left=�6F   $��20��6a   $��
178,23,0,0q�6m   $	��Top=�6�   $��71��6�    6�   �� */-logCollectionSettings.SystemlogLevels.Warning+$ TwoWay=�$ PropertyChanged=��� 5�      -
   5        $��SystemInformation��5�      $��Information��68   $
��Left=�6N   $��20��6i   $��
266,23,0,0q�6u   $	��Top=�6�   $��85��6�    6�   �� *31logCollectionSettings.SystemlogLevels.Information+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SystemFailureAudit��5�      $��FailureAudit��69   $
��Left=�6P   $��20��6k   $��
368,23,0,0q�6w   $	��Top=�6�   $��87��6�    6�   �� *42logCollectionSettings.SystemlogLevels.FailureAudit+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SuccessAudit��5�      $��SuccessAudit��63   $
��Left=�6J   $��20��6e   $��
460,23,0,0q�6q   $	��Top=�6�   $��97��6�    6�   �� *42logCollectionSettings.SystemlogLevels.SuccessAudit+$ TwoWay=�$ PropertyChanged=��� 5�      $��
SourceName��6   $
��Left=�61   $��30��6L   $��
583,17,0,0q�6X   $	��Top=�6l   $��90��6�    J� RenderTransformOrigin$ 0.528,-0.086&�6�   �� 5�      -   5        $��SystemSource��5�      $
��Left=�62   $��20��6M   $��
678,23,0,0q�6Y   $

 Wrap=�6m   $	��Top=�6�   $��78��6  ��6�   �� *.,logCollectionSettings.SystemlogLevels.Source+$ TwoWay=�$ PropertyChanged=�6  �� 5�      -   5        $��
SetupError��5�      $��Error��61   $
��Left=�6A   $��20��6\   $��104,158,0,0q�6h   $	��Top=�6}   $��60��6�    6�   �� *,*logCollectionSettings.SetuplogLevels.Error+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SetupWarning��5�      $��Warning��63   $
��Left=�6E   $��20��6`   $��178,158,0,0q�6l   $	��Top=�6�   $��71��6�    6�   �� *.,logCollectionSettings.SetuplogLevels.Warning+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SetupInformation��5�      $��Information��67   $
��Left=�6M   $��20��6h   $��266,158,0,0q�6t   $	��Top=�6�   $��85��6�    6�   �� *20logCollectionSettings.SetuplogLevels.Information+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SetupFailureAudit��5�      $��FailureAudit��68   $
��Left=�6O   $��20��6j   $��368,158,0,0q�6v   $	��Top=�6�   $��87��6�    6�   �� *31logCollectionSettings.SetuplogLevels.FailureAudit+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SetupSuccessAudit��5�      $��SuccessAudit��68   $
��Left=�6O   $��20��6j   $��460,158,0,0q�6v   $	��Top=�6�   $��97��6�    6�   �� *31logCollectionSettings.SetuplogLevels.SuccessAudit+$ TwoWay=�$ PropertyChanged=��� 5�      $��
SourceName��6   $
��Left=�61   $��30��6L   $��583,148,0,0q�6X   $	��Top=�6m   $��78��6�   $ 0.528,-0.086&�6�   �� 5�      -   5        $��SetupSource��5�      $
��Left=�61   $��20��6L   $��678,152,0,0q�6X   $

 Wrap=�6m   $	��Top=�6�   $��78��6  ��6�   �� *-+logCollectionSettings.SetuplogLevels.Source+$ TwoWay=�$ PropertyChanged=�6  �� 5�      -   5        $��SecurityError��5�      $��Error��64   $
��Left=�6D   $��20��6_   $��104,116,0,0q�6k   $	��Top=�6�   $��60��6�   $ 0.505,5.035&�6�    6�   �� */-logCollectionSettings.SecuritylogLevels.Error+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SecurityWarning��5�      $��Warning��66   $
��Left=�6H   $��20��6c   $��178,116,0,0q�6o   $	��Top=�6�   $��71��6�   $ 
0.53,4.096&�6�    6�   �� *)'logCollectionSettings.SecuritylogLevels+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SecurityInformation��5�      $��Information��6:   $
��Left=�6P   $��20��6k   $��266,116,0,0q�6w   $	��Top=�6�   $��85��6�    6�   �� *53logCollectionSettings.SecuritylogLevels.Information+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SecurityFailureAudit��5�      $��FailureAudit��6;   $
��Left=�6R   $��20��6m   $��368,116,0,0q�6y   $	��Top=�6�   $��87��6�    6�   �� *64logCollectionSettings.SecuritylogLevels.FailureAudit+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��SecuritySuccessAudit��5�      $��SuccessAudit��6;   $
��Left=�6R   $��20��6m   $��460,116,0,0q�6y   $	��Top=�6�   $��97��6�    6�   �� *64logCollectionSettings.SecuritylogLevels.SuccessAudit+$ TwoWay=�$ PropertyChanged=��� 5�      $��
SourceName��6   $
��Left=�61   $��30��6L   $��583,106,0,0q�6X   $	��Top=�6m   $��78��6�   $ 0.528,-0.086&�6�   �� 5�      -   5        $��SecuritySource��5�      $
��Left=�64   $��20��6O   $��678,116,0,0q�6[   $

 Wrap=�6p   $	��Top=�6�   $��78��6  ��6�   �� *0.logCollectionSettings.SecuritylogLevels.Source+$ TwoWay=�$ PropertyChanged=�6  �� 5�      -   5        $��ApplicationError��5�      $��Error��67   $
��Left=�6G   $��20��6b   $��
104,74,0,0q�6n   $	��Top=�6�   $��60��6�    6�   �� *20logCollectionSettings.ApplicationlogLevels.Error+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��ApplicationWarning��5�      $��Warning��69   $
��Left=�6K   $��20��6f   $��
178,72,0,0q�6r   $	��Top=�6�   $��71��6�    6�   �� *42logCollectionSettings.ApplicationlogLevels.Warning+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��ApplicationInformation��5�      $��Information��6=   $
��Left=�6S   $��20��6n   $��
266,72,0,0q�6z   $	��Top=�6�   $��85��6�    6�   �� *86logCollectionSettings.ApplicationlogLevels.Information+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��ApplicationFailureAudit��5�      $��FailureAudit��6>   $
��Left=�6U   $��20��6p   $��
368,72,0,0q�6|   $	��Top=�6�   $��87��6�    6�   �� *97logCollectionSettings.ApplicationlogLevels.FailureAudit+$ TwoWay=�$ PropertyChanged=��� 5�      -   5        $��ApplicationSuccessAudit��5�      $��SuccessAudit��6>   $
��Left=�6U   $��20��6p   $��
460,72,0,0q�6|   $	��Top=�6�   $��97��6�    6�   �� *97logCollectionSettings.ApplicationlogLevels.SuccessAudit+$ TwoWay=�$ PropertyChanged=��� 5�      $��
SourceName��6   $
��Left=�61   $��30��6L   $��
583,66,0,0q�6X   $	��Top=�6l   $��80��6�   $ 0.528,-0.086&�6�   z�5�      V� 5�      .~�5�   "   �� �� 5�   "   �� 5�   "    �� Angle$ -0.664Q�62   T� 5�   "   5�      5�      �� 5�      -   5        $��ApplicationSource��5�      $
��Left=�67   $��20��6R   $��
678,66,0,0q�6^   $

 Wrap=�6r   $	��Top=�6�   $��78��6�   ��6�   �� *31logCollectionSettings.ApplicationlogLevels.Source+$ TwoWay=�$ PropertyChanged=�5�      5�      5�      �� 5�   
   -    5        $
��Save��5�      $
��Left=�6    $��351,330,0,0q�6;   $	��Top=�6P   $��75��6h   6s   5�      5�      