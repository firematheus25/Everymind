   M S B A M L   `   `   `  ����  OliveiraTrade.WPF&     OliveiraTrade.WPF.EditarCadastro   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  	Registrar��5	   	   $	��500��6   $	��800��6(    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   $��Calibri)�5   	   .��5      � ���	#FF82D1DF.+�5   
   �� $	��280��6   $	��Top=�6!   ���	#FF0098DA69   �� 5   
   $��40��6   $	��Top=�6    ���	#FF0098DA68   �� 5   
   -   5         ��Name$ ConteinerPrincipal��5      $	��700��60   $	��240��6<   $��Bottom=�6I   $
��0,80q�6d    �� RadiusY$ 10��6r    �� RadiusX$ 10��6   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6#   	   	Direction$	 0Q�63   
   RenderingBias$
 Quality=�6A      ShadowDepth$ 1Q�6Y      Color$ 	#FFBBBBBB��6i   5      �� 5   
   $��Bottom=�6   $��50,80q�60   $	��240��6?    �� Orientation$ 
Horizontal=�6L   .+�5      �� -   5         ��Name$ gpboxRegistrar��5      $	��678��6/   $��10q�6;   $	��0.5q�6G   .��5      �  � ColumnDefinitions 5      �� 5      �� 5       � RowDefinitions 5!      �� 5"      $��40 �6(   �� 5#      �� 5$      $��59 �6(   �� 5%      $��21 �6(   .+�5(      �� $��2��6   $��Editar Cadastro��60   $��18(�6J   ���#888$��Center=�6j   $	��125��6�   �� 5)      -   5         ��Name$ txtNome��5)      $��0��6/   $��1��6?   $��
10 20 10 0q�6L   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Nome��6`    %  !MaterialDesignFloatingHintTextBox#��[  6�   ���	#33000000$��18(�6�   �� 5*      -   5         ��Name$ cbbSexo��5*      $��1��60   $��1��6@   $��
10 20 10 0q�6M   $
 Sexo��6a    & "MaterialDesignFloatingHintComboBox#��[ 6�   ���	#33000000$��18(�6�   �� 5,      -   5        $ txtCpf��5,      $��0��6.   $��2��6>   $��2��6K   $��2��6_   $��10,10,152,20q�6p   $	 CPF��6�   #��[  6�   ���	#33000000$��18(�6�   (  "System.Windows.Controls.DatePicker  5-      -   5          Name$ txtNascimento��5-   !   $��1��69   $��2��6I   $��	10,28,6,0q�6V   $ 
Nascimento��6i   $��18(�6�   $	��Top=�6�   $��32��6�   $��2��6�   �� 5/      $��3��6   $��0 20 0 0q�61   $	��0.5��6C   ���	#330000006P   50      51      52      �� 53   
   -   5         ��Name$ 	btnLogout��53      $��40��6$   $|�False��60   $��Bottom=�6B   ���#FFF��6o   Z� ��6�   Z� .��54      � $	��150��6   .+�55      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ logout=�6*   $��27,0,0,0q�68   $��Center=�6J   �� 56      $��Logout?��6   $��Center=�6+   57      58        5;   
   -   5          Name$ Icon1��5;   "   $	��150��61   $	��150��6=   $ HumanWelcome=�6J   $��10,0,0,0q�6^   ���#FFF6p   �� 5<   
   $
��Left=�6   $	��Top=�6+   $��
165,40,0,0q�6C   $	��385��6W   
�������$��72(�6v   .��6�   	Bem-vindo6�   �� 5?   
   -	   5        $ 	btnEditar��5?      $��30��6$   $	��Top=�60   $	��150��6H   $��325,420,325,0q�6T   $��5q�6k   .��5@      � $	��120��6   .+�5A        $ 	Checkbook=�6*   �� 5B      $��	Confirmar��6   $��Right=�6-   $��0,0,31,0q�6I   5C      5D      �� 5G   
   -
   5        $ 	btnFechar��5G      $|�False��6$   $	��Top=�66   $��Right=�6N   $��30��6j   $��30��6u   $��5q�6�   ���#FFF + 'MaterialDesignFloatingActionLightButton#��[ 5H       � ToolTip$ Fechar��6j   ��5G   �   Z� .��5I        $ Shutdown=�6&   5J      �� 5L   
   -   5        $ btnMinimizar��5L      $	��Top=�6'   $
��Left=�6?   $��30��6Z   $��30��6e   $��	725 5 5 5q�6q   ���#FFF#��[ 5M      3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IndicatorBackground
 �����$ 	Minimizar��6�   ��5L   �   Z� .��5N        $ WindowMinimize=�6&   5O      5P      5Q      