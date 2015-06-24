clear; clc; close;

Vcc = 9;
Vee = Vcc;
Vi = 2*10^(-3);
Rc = 47*10^(3);
Re = 43*10^(3);


Ie = (Vee-0.7)/Re;
Ic = Ie/2;
Vc = Vcc-Ic*Rc;
re = 26/0.0965;
Av = Rc/(2*re);
Vo = Av*Vi;

disp(Vo,'Single ended output voltage(Volts) = ');
