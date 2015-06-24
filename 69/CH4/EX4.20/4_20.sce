clear; clc; close;

Re = 1.2*10^(3);
R2 = 18*10^(3);
Vcc = 18;
Vce = 10;
Vbe = 0.7;
Ve = 2.4
Ic = 2*10^(-3);

Ve = Ic*Re;
Vb = Vbe+Ve;
R1 = (R2*Vcc/Vb) - R2;
Vc = Vce+Ve;
Rc = (Vcc-Vc)/Ic;
disp(R1,'R1(ohms) is : ');
disp(Rc,'Rc(ohms) is : ');
