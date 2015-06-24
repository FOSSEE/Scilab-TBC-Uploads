clear; clc; close;

Idss = 8*10^(-3);
Vp = -6;
Vdd = 18;
Rs = 1.2*10^(3);
R1 = 2*10^(6);
R2 = 470*10^(3);

m = abs(Vp)/(Idss*Rs);
Vg = R2*Vdd/(R1+R2);
M = m*(Vg/abs(Vp));

Idq = 0.52*Idss;
Vgsq = -0.27*abs(Vp);

disp(Vgsq,'Vgsq(Volts) = ');
disp(Idq,'Idq(Amperes) = ');
