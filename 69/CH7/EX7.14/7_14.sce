clear; clc; close;

Idss = 12*10^(-3);
Vp = -3;
Vbe = 0.7;
Beta = 80;
Re = 1.6*10^(3);
Rs = 2.4*10^(3);

Vgsq = -2.6;
Idq = 1*10^(-3);
Ic = Idq;
Ie = Ic;
Ib = Ic/Beta;
Vb = 16-Ib*(470*10^(3));
Vd = Vb-Vbe;
disp(Vd,'Vd(Volts) = ');

