clear; clc; close;

Rf = 270*10^(3);
A1 = 10;
A2 = -18;
A3 = -27;
Vi = 150*10^(-6);


R1 = Rf/(A1-1);
R2 = Rf/-A2;
R3 = Rf/-A3;

Vo = A1*A2*A3*Vi;

disp(Vo,'Output voltage(Volts) = ');
