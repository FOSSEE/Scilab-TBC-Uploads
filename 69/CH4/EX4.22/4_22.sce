clear; clc; close;

Vcc = 20;
Vc = 18;
Vce = 10;
Vbe = 0.7;
Beta = 150;
Ic = 2*10^(-3);
Ie = Ic;

Ve = 0.1*Vcc;
Re = Ve/Ie;
Rc = (Vcc-Vce-Ve)/Ic;
Ib = Ic/Beta;
Rb = (Vcc-Vbe-Ve)/Ib;

disp(Re,'Value of Re(ohms) is : ');
disp(Rc,'Value of Rc(ohms) is : ');
disp(Rb,'Value of Rb(ohms) is : ');

