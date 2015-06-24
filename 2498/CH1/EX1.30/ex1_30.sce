// Exa 1.30
clc;
clear;
close;
format('v',6)
// Given data
// Io150 = Io25 * 2^((150-25)/10);
//Io150 = 5800*Io25;
T = 150;// in degree C
T = T  + 273;// in K
V_T = 8.62*10^-5 * T;// in V
V = 0.4;// in V
Eta = 2;
Vt = 0.026;// in V 
// The factor  by which current will get multiplied 
I150byI25= 5800*%e^(V/(Eta*V_T))/%e^(V/(Eta*Vt));
disp(I150byI25,"The factor  by which current will get multiplied is");
