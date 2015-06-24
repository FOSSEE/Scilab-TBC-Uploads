clear; clc; close;

Vee = 2;
Vbe = 0.7;
Vt = 26*(10^(-3));
Re = 1*(10^(3));
Rc = 5*(10^(3));
ro = 1*(10^(6));
alpha = 0.98;

Ie = (Vee-Vbe)/Re;
re = Vt/Ie;
disp(re,"Value of diode resistive element(re) :");

Zi = (Re*re)/(Re+re);
disp(Zi,"Input Impedance(Zi) :");

Zo = Rc;
disp(Zo,"Output Impedance(Zo) :");

Av = Rc/re;
disp(Av,"Voltage gain(Av) :");

Ai = -alpha;
disp(Ai,"Current gain(Ai) :");
