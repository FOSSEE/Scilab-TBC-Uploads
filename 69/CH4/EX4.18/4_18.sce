clear; clc; close;

Re = 1.8*10^(3);
Rc = 2.7*10^(3);
R1 = 8.2*10^(3);
R2 = 2.2*10^(3);
Vee = 20;
Vcc = 20;
Vbe = 0.7;
Beta = 120;

Rth = R1*R2/(R1+R2);
I = (Vcc+Vee)/(R1+R2);
Eth = I*R2 - Vee;
Ib = (Vee-Eth-Vbe)/(Rth+(Beta+1)*Re);
Ib = 35.39*10^(-6);
Ic = Beta*Ib;
Vc = Vcc - Ic*Rc;
Vb = Eth+Ib*Rth;
disp(Vc,'Vc(volts) is :');
disp(Vb,'Vb(Volts) is :');
