   M S B A M L   `   `   `  ����  OliveiraTrade.WPF!    OliveiraTrade.WPF.Registrar   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  	Registrar��5	   	   $	��500��6   $	��800��6(    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   $��Calibri)�5   	   .��5      � ���	#FF82D1DF.+�5   
   �� $	��280��6   $	��Top=�6!   ���	#FF0098DA69   �� 5   
   $��40��6   $	��Top=�6    ���	#FF0098DA68   �� 5   
   -   5         ��Name$ ConteinerPrincipal��5      $	��700��60   $	��240��6<   $��Bottom=�6I   $
��0,80q�6d    �� RadiusY$ 10��6r    �� RadiusX$ 10��6   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6#   	   	Direction$	 0Q�63   
   RenderingBias$
 Quality=�6A      ShadowDepth$ 1Q�6Y      Color$ 	#FFBBBBBB��6i   5      �� 5   
   $��Bottom=�6   $��50,80q�60   $	��240��6?    �� Orientation$ 
Horizontal=�6L   .+�5      �� -   5         ��Name$ gpBoxAdm��5      $	��330��6)   $��10q�65   $	��0.5q�6A   .��5      �  � ColumnDefinitions 5      �� 5       � RowDefinitions 5       �� 5!      $��40 �6(   �� 5"      .+�5%      �� $��Credenciais do Usuário��6   $��18(�6=   ���#888$��Center=�6]   �� 5&      $��1��6!   $��Center=�6.   $��15q�6I   .+�5'      �� -   5         ��Name$ txtEmail��5'   "   $
��0,10q�64   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email��6B    %  !MaterialDesignFloatingHintTextBox#��[  6i   ���	#33000000$��18(�6�   G� 5(      -   5         G�Name$ txtSenha��5(   &   $
��0,10q�68   $ Senha��6F    ) %MaterialDesignFloatingHintPasswordBox#��[ 6m   ���	#33000000$��18(�6�   5)      �� 5*      $��0 20 0 0q�6   $	��0.5��6/   ���	#330000006<   5+      5,      �� 5.      -   5        $ gpboxRegistrar��5.      $	��330��6/   $��10q�6;   $	��0.5q�6G   .��5/      �  50      �� 51      �� 52       54      �� 55      $��40 �6(   �� 56      �� 57      $��59 �6(   �� 58      $��21 �6(   .+�5;      �� $��2��6   $��	Registrar��60   $��18(�6D   ���#888$��Center=�6d   $��115.99,0q�6�   $��80.02��6�   �� 5<      -   5        $ txtNome��5<      $��0��6/   $��1��6?   $��
10 20 10 0q�6L   $
 Nome��6`   #��[  6�   ���	#33000000$��18(�6�   �� 5=      -   5         ��Name$ cbbSexo��5=      $��1��60   $��1��6@   $��
10 20 10 0q�6M   $
 Sexo��6a    & "MaterialDesignFloatingHintComboBox#��[ 6�   ���	#33000000$��18(�6�   �� 5?      -   5        $ txtCpf��5?      $��0��6.   $��2��6>   $��2��6K   $��2��6_   $��10,15,152,20q�6p   $	 CPF��6�   #��[  6�   ���	#33000000$��18(�6�   (  "System.Windows.Controls.DatePicker  5@      -	   5          Name$ txtNascimento��5@   !   $��1��68   $��2��6H   $��	10,28,6,0q�6U   $ 
Nascimento��6h   $��18(�6�   $	��Top=�6�   $��32��6�   $��2��6�   �� 5C      $��3��6   $��0 20 0 0q�61   $	��0.5��6C   ���	#330000006P   5D      5E      5F      �� 5G   
   -
   5         ��Name$ 
btnUsuario��5G      $��40��6%   $|�False��61   $��Bottom=�6C   ���#FFF��6p   Z� ��6�   Z� .��5H      � $	��150��6   .+�5I      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ UserAdd=�6*   $��38,0,0,0q�69   $��Center=�6K   �� 5J      $��Logar��6   $��Center=�6)   5K      5L        5O   
   -   5          Name$ Icon1��5O   "   $	��150��61   $	��150��6=   $ Register=�6J   $��	10 30 0 0q�6Z   ���#FFF$	��Top=�6   $��Center=�6�   �� 5R   
   -   5        $ btnRegistrar��5R      $	��150��6'   $	��Top=�63   $��325,420,325,0q�6K   $��5q�6b   .��5S      � $	��130��6   .+�5T        $ Register=�6*   �� 5U      $��Registrar-se��6   $��Center=�60   5V      5W      �� 5Z   
   -   5        $ 	btnFechar��5Z      $|�False��6$   $	��Top=�66   $��Right=�6N   $��30��6j   $��30��6u   $��5q�6�   ���#FFF + 'MaterialDesignFloatingActionLightButton#��[ 5[       � ToolTip$ Fechar��6j   ��5Z   �   Z� .��5\        $ Shutdown=�6&   5]      �� 5_   
   -   5        $ btnMinimizar��5_      $	��Top=�6'   $
��Left=�6?   $��30��6Z   $��30��6e   $��	725 5 5 5q�6q   ���#FFF#��[ 5`      3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IndicatorBackground
 �����$ 	Minimizar��6�   ��5_   �   Z� .��5a        $ WindowMinimize=�6&   5b      5c      5d      