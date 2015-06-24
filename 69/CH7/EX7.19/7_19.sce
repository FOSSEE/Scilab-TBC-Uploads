clear; clc; close;

Idss = 6*10^(-3);
Vp = -3;
Vdd = 16;
Rd = 3.9*10^(3);
Rs = 1.6*10^(3);

m = abs(Vp)/(Idss*Rs);
Idq = 0.18*Idss;
Vgsq = -0.575*abs(Vp);

disp(Vgsq,'Vgsq(Volts) = ');
disp(Idq,'Idq(Amperes) = ');
