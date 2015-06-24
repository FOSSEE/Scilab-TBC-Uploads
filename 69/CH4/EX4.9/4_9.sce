clear; clc; close;

R1 = 39*10^(3);
R2 = 3.9*10^(3);
Re = 1.5*10^(3);
Rc = 4*10^(3);
Vcc = 18;
Vbe = 0.7;
Beta = 70;

Rth = R1*R2/(R1+R2);
Eth = R2*Vcc/(R1+R2);
Ib = (Eth - Vbe)/(Rth + (Beta+1)*Re);
Icq = Beta*Ib;
Vceq = Vcc - Icq*(Rc+Re);
disp(Icq,'Collector current(Amperes) in :');
disp(Vceq,'Vce(Volts) is : ');

