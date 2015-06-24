// Exa 7.12
clc;
clear;
close;
// Given data
L1= 52.6;// in mH
r1= 28.5;// in ohm
R2= 1.68;// in ohm
R3= 80;// resistance in ohm
R4= 80;// resistance in ohm
r2= r1*R3/R4-R2;// in ohm
disp(r2,"Resistance of coil in ohm")
L2=L1*R3/R4;// in mH
disp(L2,"Inductance of coil in mH");
