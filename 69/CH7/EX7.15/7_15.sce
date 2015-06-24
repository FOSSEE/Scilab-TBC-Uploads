clear; clc; close;

Vdd = 20;
Vdq = 12;
Idq = 2.5*10^(-3);
Vgsq = -1;
Rd = (Vdd-Vdq)/Idq;
Rs = -Vgsq/Idq;

disp(Rd,'Rd(Ohms) = ');
disp(Rs,'Rs(Ohms) = ');
disp(3.3*10^(3),'Closest commercial value of Rd(Ohms) = ');
disp(0.39*10^(3),'Closest commercial value of Rs(Ohms) = ');
