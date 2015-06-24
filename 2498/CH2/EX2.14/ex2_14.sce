// Exa 2.14
clc;
clear;
close;
format('v',6)
// Given data
Vrms = 50;// in V
r_f = 20;// in ohm
R_L = 980;// in ohm
Vm = sqrt(2)*Vrms;// in V
Im = (Vm)/(R_L+r_f);
// The mean load current 
Idc = (2*Im)/%pi;// in A
Idc = round(Idc * 10^3);// in mA
disp(Idc,"The mean load current in mA is");
// The RMS load current 
Irms = Im/sqrt(2);// in A
Irms = Irms*10^3;// in mA
disp(Irms,"The RMS load current in mA is");
a = 0.812;// assumed
// The output efficiency 
Eta = a/(1+(r_f/R_L));
Eta = Eta * 100;// in %
disp(Eta,"The output efficiency in % is");
