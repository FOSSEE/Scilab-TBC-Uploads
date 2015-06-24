// Exa 2.9
clc;
clear;
close;
format('v',5)
// Given data
// Vi = 15*sind(314*t);
Vm = 15;// in V
R_L = 1;// in k ohm
R_L = R_L * 10^3;// in ohm
Im = Vm/R_L;// in A
Im = Im * 10^3;// in mA
Idc = Im/%pi;// in mA
// The average current 
I_Dav = Idc;// in mA
disp(I_Dav,"The average current in mA is");
// The RMS current 
I_Drms = Im/2;// in mA
disp(I_Drms,"The RMS current in mA is");
// The peak diode current 
I_Dpeak = Im;// in mA
disp(I_Dpeak,"The peak diode current in mA is");
// The PIV of diode 
PIV = 2*Vm;// in V
disp(PIV,"The PIV of diode in V is");
