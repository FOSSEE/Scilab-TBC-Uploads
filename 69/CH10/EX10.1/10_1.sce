clear; clc; close;

Vcc = 9;
Vee = Vcc;
Rc = 3.9*10^(3);
Re = 3.3*10^(3);


Ie = (Vee-0.7)/Re;
Ic = Ie/2;
Vc = Vcc-Ic*Rc;

disp(Ie,'Emitter current(Amperes) = ');
disp(Ic,'Collector current(Amperes) = ');
disp(Vc,'Collector voltage(Volts) = ');
