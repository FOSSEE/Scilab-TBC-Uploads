clear; clc; close;

Vcc = -18;
Vbe = -0.7;
Beta = 100;
R1 = 47*10^(3);
R2 = 10*10^(3);
Re = 1.1*10^(3);
Rc = 2.4*10^(3);

Vb = R2*Vcc/(R1+R2);
Ve = Vb-Vbe;
Ie = abs(Ve)/Re;
Ic = Ie;
Vce = Vcc+Ic*(Rc+Re);
disp(Vce,'Vce(volts) is : ');
