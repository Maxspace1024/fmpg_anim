   M S B A M L   `   `   `  ���� C  ?fmpg_gui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:fmpg_guifmpg_gui      fmpg_gui.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:fmpg_gui       � 
ResizeMode$  NoResize=� � Title$ 定格動畫轉檔程式��$	��270��$	��500��.���� .@��� $��輸出影片��.����  �� Orientation$ Vertical=�
�������.+�� $��25,30,25,15q� � ColumnDefinitions �� �� �� �� �� �� �� .+��� $��0��$��2��$ 
Horizontal=�.+��� $��幀數���� -    ��Name$ framps��$��60���� $��2��$��框架速度���� -    ��Name$ 
frameSpeed��$��3��.@��� $��24���� $��30��� $��25,15,25,15q� �� �� �� �� �� �� �� .+��� $��0��$��4��$ 
Horizontal=�.+��� $��檔案名稱格式���� -   $ FileNamefmt��$	��163���� $��5��$��2��$ 
Horizontal=�$
��10,0q�.+�	� -    	�Name$ extPng��$��5��$
��.png�� 	� 	GroupName$ extName��$��5q�	� -   $ extJpg��$��6��$
��.jpg��$ extName��$��5q�� $��25,15,25,15q� �� �� �� �� �� �� �� .+��� $��0��$��4��$ 
Horizontal=�.+��� $��輸出檔案名稱���� -   $ FileNameOut��$	��163���� $��4��$
��.mp4���� -    ��Name$ btCvt��$��5��$��2��$��Convert��$
��15,0q��� $��圖片重新命名��.��� $��60,40q� �� �� �� 	 � RowDefinitions	 �� �� .+��� $��0��$��0��$��2��$ 
Horizontal=�.+��� $��檔案類型��$��Center=�$��Center=��� -   $ fType��$��10,18q�$��70��.@��� $��*.png���� $��*.jpg���� -	   $ btRename��$��3��$��2��$��15,18q�$��Rename��