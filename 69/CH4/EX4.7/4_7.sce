clear; clc; close;

R1 = 39*10^(3);
R2 = 3.9*10^(3);
Re = 1.5*10^(3);
Rc = 4*10^(3);
Vcc = 18;
Vbe = 0.7;
Beta = 140;

Rth = R1*R2/(R1+R2);
Eth = R2*Vcc/(R1+R2);
Ib = (Eth - Vbe)/(Rth + (Beta+1)*Re);
Ic = Beta*Ib;
Vce = Vcc - Ic*(Rc+Re);

disp(Ic,'Collector current(Amperes) in :');
disp(Vce,'Vce(Volts) is : ');
disp('Value of Vce differs because wrong value of Vcc is used in the book');
