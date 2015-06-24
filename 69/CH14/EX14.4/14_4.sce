clear; clc; close;

R1 = 1.8*10^(3);
R2 = 200;
A = 100000;


Beta = R2/(R1+R2);
Af = A/(1+Beta*A);
Af = 1/Beta;

disp(Af,'Amplifier gain = ');
