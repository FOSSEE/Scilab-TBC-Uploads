clear; clc; close;

Vcc = 20;
Ic = 8*10^(-3);
Vbe = 0.7;
Ib = 40*10^(-6);

Rc = Vcc/Ic;
Rb = (Vcc-Vbe)/Ib;

disp(Rc,'Rc(ohms) is : ');
disp(Rb,'Rb(ohms) is : ');

