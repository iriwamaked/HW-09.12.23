   M S B A M L   `   `   `  ����F  BHW-09.12.23, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:HW_09._12._23HW_09._12._23  5   	       HW_09._12._23.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:HW_09._12._23     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��0.4* �6   �� 5      .+�5   
   �� $��Stretch=�6   $��10q�63   .+�5      �� $��5,0,5,5q�6   /-Введіть пошуковий запит:6C   �� 5      -   5        $��
SearchText��5   '   $��5,0,5,0q�6   6;   �� 5       �� Orientation$ 
Horizontal=�6   $��5q�62   .+�5      �� .+�5      	� -   5         	�Name$ GoogleRadioButton��5   "   .��6=   Google6E   	� 5      -   5        $ BingRadioButton��5   "   .��6;   Bing6A   	� 5      -   5        $ BothRadioButton��5   "   .��6;   Google and Bing6L   5      �� 5      -   5        $��15,5,5,5q�5      $��5q�6+   $
��Left=�67   .��6m   
Пошук6t   5      5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      �� 5      .+�5      (  "System.Windows.Controls.WebBrowser  -   5          Name$ GoogleWebBrowser��5       � Cursor$ Arrow��63   $
��Auto��6B   5!        5"      -   5        $ BingWebBrowser��5"   )   $��1��6   $ Arrow��6A   $
��Auto��6P   5$      5%      5&      5'      