// Exa 7.13
clc;
clear;
close;
// Given data
L= 47.8;// in mH
R= 1.36;// in ohm
R2= 100;// in ohm
R3= 32.7;//in ohm
R4= 100;//in ohm
R1= R2*R3/R4-R;// in ohm
disp(R1,"Resistance of coil in ohm");
L1= R2/R4*L;// in mH
disp(L1,"Inductance of coil in mH")
