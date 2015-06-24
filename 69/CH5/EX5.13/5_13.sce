clear; clc; close;

Vcc = 12;
Vbe = 0.7;
Vt = 26*(10^(-3));
Rc = 3*(10^(3));
Rf1 = 120*(10^(3));
Rf2 = 68*(10^(3));
Rf = Rf1 + Rf2;
ro = 30*(10^(3));
Beta = 140;

Ib = (Vcc-Vbe)/(Rf+Beta*Rc);
Ie = (1+Beta)*Ib;
re = Vt/Ie;
disp(re,"Value of diode resistive element(re) :");

Zb = Beta*re;
Zi = (Rf1*Zb)/(Rf1+Zb);
disp(Zi,"Input Impedance(Zi) :");

Zo = (Rc*Rf2)/(Rc+Rf2);
disp(Zo,"Output Impedance(Zo) :");

Av = -[(Rf2*Rc)/(Rf2+Rc)]/re;
disp(Av,"Voltage gain(Av) :");
