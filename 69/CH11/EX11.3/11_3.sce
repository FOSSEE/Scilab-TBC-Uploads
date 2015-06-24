clear; clc; close;

Rf = 470*10^(3);
R1 = 4.3*10^(3);
R2 = 33*10^(3);
R3 = 33*10^(3);

Vi = 80*10^(-6);

A = ((1+(Rf/R1))*(-Rf/R2)*(-Rf/R3));
Vo = A*Vi;

disp(Vo,'Output voltage(Volts) = ');


