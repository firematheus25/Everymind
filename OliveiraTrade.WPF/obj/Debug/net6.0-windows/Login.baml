   M S B A M L   `   `   `  ����  OliveiraTrade.WPF    OliveiraTrade.WPF.Login   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  Login��5   	   $	��500��6   $	��350��6$    � 
ResizeMode$ NoResize=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	   $��Calibri)�5   	   .��5      � ���	#FF82D1DF.+�5   
   �� $	��280��6   $	��Top=�6!   ���	#FF0098DA69   �� 5   
   $��40��6   $	��Top=�6    ���	#FF0098DA68   �� 5   
   -   5         ��Name$ ConteinerPrincipal��5      $	��300��60   $	��240��6<   $��Bottom=�6I   $
��0,80q�6d    �� RadiusY$ 10��6r    �� RadiusX$ 10��6   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6#   	   	Direction$	 0Q�63   
   RenderingBias$
 Quality=�6A      ShadowDepth$ 1Q�6Y      Color$ 	#FFBBBBBB��6i   5      � 5   
   $��Bottom=�6   $��30,80q�6*   $	��240��69   .+�5      �� -   5         ��Name$ lblConectando��5      $��Conectar-se��6+   $��Center=�6A   $	��Top=�6^   $��5q�6v   
�������$��18(�6�   $|�False��6�   �� 5      $��Center=�6   $��15q�64   .+�5      �� -   5         ��Name$ txtEmail��5      $
��0,10q�6,   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email��6:    %  !MaterialDesignFloatingHintTextBox#��[  6a   ���	#33000000$��18(�6�   G� 5      -   5         G�Name$ txtSenha��5      $
��0,10q�60   $ Senha��6>    ) %MaterialDesignFloatingHintPasswordBox#��[ 6e   ���	#33000000$��18(�6�   5       5!      �� 5#   
   -   5         ��Name$ btnRegistrar��5#      $��40��6'   $|�False��63   $��Bottom=�6E   ���#FFF��6r   Z� ��6�   Z� .��5$      � $	��200��6   .+�5%      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Register=�6*    J� RenderTransformOrigin$ 
3.644,0.47&�6:   $��41,0,0,0q�6]   $��Center=�6o   �� 5&      $��Registrar-se��6   $��Center=�60   5'      5(        5)   
   -   5          Name$
 Icon��5)   "   $
 User=�60   $	��100��6<   $	��100��6H   $��10 40 10 10q�6U   ���#FFF$	��Top=�6|   $��Center=�6�   �� 5*   
   -   5        $ BtnLogar��5*      $	��150��6#   $|�False��6/   $��Center=�6A   $��Bottom=�6^   $
��0,65q�6y   $��5q�6�   $��Conectar��6�   6�   �� 5-   
   -   5        $ 	btnFechar��5-      $|�False��6$   $	��Top=�66   $��Right=�6N   $��30��6j   $��30��6u   $��5q�6�    + 'MaterialDesignFloatingActionLightButton#��[ 6�   ���#FFF � ToolTip$ Fechar��6  ��6�   Z� .��5.        $ Shutdown=�6&   5/      �� 51   
   -	   5        $ btnMinimizar��51      $	��Top=�6'   $
��Left=�6?   $��30��6Z   $��30��6e   $��	275 5 5 5q�6q   ���#FFF#��[ 52      3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IndicatorBackground
 �����$ 	Minimizar��6�   ��51   �   Z� .��53        $ WindowMinimize=�6&   54      55      57      