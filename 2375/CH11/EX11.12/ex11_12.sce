// Exa 11.12
clc;
clear;
close;
format('v',6)
// Given data
C = 0.01;// in pF
C = C * 10^-12;// in F
L = 10;// in mH
L = L * 10^-3;// in H
f_o = 1/(2*%pi*sqrt(L*C));// in Hz
f_o = f_o * 10^-6;// in MHz
disp(f_o,"The oscillation frequency in MHz is");
R1 = 100;// in k ohm
R2 = 5;// in k ohm
A = 1 + (R1/R2);
// Beta = R/10;
// loopgain = A*Beta A*R/10 >=1
R= 10/A;// in k ohm
R=round(R*10^3);// in ohm
disp("The value of R is >= "+string(R)+" ohm")
