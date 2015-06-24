clear; clc; close;

Re = 0.51*10^(3);
Rc = 3.3*10^(3);
Rb = (91+110)*10^(3);
Vcc = 18;
Vbe = 0.7;
Beta = 75;

Ib = (Vcc - Vbe)/(Rb + (Beta)*(Re+Rc));
Ic = Beta*Ib;
Vc = Vcc - Ic*(Rc);
disp(Ic,'Value of Icq(Amperes) is : ');
disp(Vc,'Value of Vceq(Volts) : ');

