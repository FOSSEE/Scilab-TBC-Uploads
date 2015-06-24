// Exa 2.17
clc;
clear;
close;
format('v',5)
// Given data
V1 = 230;// iin V
N2 = 1;
N1 = 5;
R_L = 100;// in ohm
V2 = V1*N2/N1;// in V
Vrms = V2;// in V
Vs = V2/2;// in V
Vm = sqrt(2)*Vs;// in V
// The dc output voltage 
Vdc = (2*Vm)/%pi;// in V
disp(Vdc,"The dc output voltage in V is");
// The PIV value 
PIV = round(2*Vm);// in V
disp(PIV,"The PIV value in V is");
// The rectification efficiency 
Eta = 0.812;
Eta = Eta*100;// in %
disp(Eta,"The rectification efficiency in % is");
