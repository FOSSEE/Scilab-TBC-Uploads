// Exa 3.2
format('v',6)
clc;
clear;
close;
// Given data
Vdc = 120;// in V
Vm = (%pi/2)*Vdc;// in V
disp(Vm,"The peak value of output voltage in V is");
Vpeak = 2*Vm;// in V
disp(Vpeak,"The peak value of voltage at transformer secondary in volts is : ")
Vrms = Vpeak/sqrt(2);// in V
disp(Vrms,"The r.m.s. value of voltage at transformer secondary in V is");
R_L = 250;// in k ohm
R_L = R_L * 10^3;// in ohm
Idc = Vdc/R_L;// in A
Idc= Idc*10^6;// in µA
disp(Idc,"The average current delivered to load in µA is");
Io = Idc/2;// in µA
disp(Io,"The average current through each of the diode in µA is");
// Peak current through each of the diode in A
I_peak = Vm/R_L;// in A
I_peak= I_peak*10^3;// in mA
disp(I_peak,"The peak current through each of the diode in mA is");
PIV = 2*Vm;// in V
disp(PIV,"The PIV required for each of the diode in V is");
