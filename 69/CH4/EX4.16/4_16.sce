clear; clc; close;

Re = 2*10^(3);
Rb = 240*10^(3);
Vee = 20;
Vbe = 0.7;
Beta = 90;

Ib = (Vee-Vbe)/(Rb+(Beta+1)*Re);
Ic = Beta*Ib;
Ie = (Beta+1)*Ib;
Vceq = Vee - (Beta+1)*Ib*Re;
disp(Vceq,'Vceq(Volts) is :');
disp(Ie,'Ie(amperes) is :');
