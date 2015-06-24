clear; clc; close;

V1 = 8;
R1 = 2*10^3;
I1 = 10*10^(-3);


Il = V1/R1;
Vo = -I1*R1;

disp(Il,'Il(Amperes) = ');
disp(Vo,'Vo(Volts) = ');
