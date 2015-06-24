// Exa 1.20
clc;
clear;
close;
format('v',9)
// Given data
R_H = 3.55 * 10^-4;// in m^3/C
Ix = 15;// in mA
Ix = Ix * 10^-3;// in A
A = 15*1;// in mm
A = A * 10^-6;// in m^2
Bz = 0.48;// in Wb/m^2
Jx = Ix/A;// in A/m^2
// R_H = Ey/(Bz*Jx);
Ey = R_H*Bz*Jx;// in V/m
// voltage between contacts 
Voltage = Ey*Ix;// in V
disp(Voltage,"The voltage between contacts in V is");
