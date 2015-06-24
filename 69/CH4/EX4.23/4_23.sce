clear; clc; close;

Vcc = 20;
Vc = 18;
Vce = 8;
Vbe = 0.7;
Beta = 150;
Ic = 10*10^(-3);
Ie = Ic;
R2 = 1.6*10^(3);
Ve = 0.1*Vcc;
Re = Ve/Ie;
Rc = (Vcc-Vce-Ve)/Ic;

Vb = Vbe + Ve;
R1 = R2*Vcc/Vb - R2;

disp(Re,'Value of Re(ohms) is : ');
disp(Rc,'Value of Rc(ohms) is : ');
disp(R1,'Value of R1(ohms) is : ');
