clear; clc; close;

Rf = 240*10^(3);
R1 = 2.4*10^(3);
Vi = 120*10^(-6);

A = 1+(Rf/R1);
Vo = A*Vi;

disp(Vo,'Output voltage(Volts) = ');

