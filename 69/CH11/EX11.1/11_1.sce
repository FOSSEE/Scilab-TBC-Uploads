clear; clc; close;

Rf = 200*10^(3);
R1 = 2*10^(3);
Vi = 2.5*10^(-3);

A = -Rf/R1;
Vo = A*Vi;

disp(Vo,'Output voltage(Volts) = ');

