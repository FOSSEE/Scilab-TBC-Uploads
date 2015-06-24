clear; clc; close;

Re = 1.2*10^(3);
Rc = 2.4*10^(3);
Rb = 240*10^(3);
Vee = 4;
Vcc = 10;
Vbe = 0.7;
Beta = 60;

Ie = (Vee-Vbe)/Re;
Ic = Ie;
Vcb = Vcc-Ic*Rc;
Ib = Ic/Beta;
disp(Vcb,'Vcb(Volts) is : ');
disp(Ib,'Ib(amperes) is :');

