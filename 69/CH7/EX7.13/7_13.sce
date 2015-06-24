clear; clc; close;

Idss = 12*10^(-3);
Vp = -3;
Vbe = 0.7;
Beta = 180;
Re = 1.6*10^(3);

Vb = (24*10^(3)*16)/((82+24)*10^(3));
Ve = Vb-Vbe;
Vre = Ve;
Ie = Vre/Re;
Ic = Ie;
Id = Ic;
Vd = 16-Id*(2.7*10^(3));
Vgsq = -1.8;
Vc = Vb - Vgsq;

disp(Vd,'Vd(Volts) = ');
disp(Vc,'Vc(Volts) = ');

