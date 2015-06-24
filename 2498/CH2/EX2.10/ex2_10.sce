// Exa 2.10
clc;
clear;
close;
format('v',6)
// Given data
R_L = 1;// in k ohm
R_L = R_L * 10^3;// in ohm
Rf = 1;// in ohm
R2 = 2;// in ohm
N1 = 4;
N2 = 1;
V1rms = 240;// in V
V2rms = (N2/N1)*V1rms;// in V
Vm = sqrt(2)*V2rms;// in V
// The average load current 
I_LDC = (2*Vm)/(%pi*(R2+Rf+R_L));// in A
I_LDC= I_LDC *10^3;// in mA
disp(I_LDC,"The average load current in mA is");
I_LDC= I_LDC *10^-3;// in A
// The average load voltage at no load 
V_NL = (2*Vm)/%pi;// in V
disp(V_NL,"The average load voltage at no load in V is");
// The average load voltage at full load 
V_LDC = I_LDC*R_L;// in V
disp(V_LDC,"The average load voltage at full load in V is");
// The percentage load regulation 
Per_loadReg= (V_NL-V_LDC)/V_LDC*100;// in %
disp(Per_loadReg,"The percentage load regulation in % is : ")
Im = Vm/(R_L+R2+Rf);// in A
Irms = Im/2;// in A
P_iAC = (Vm^2)/(2*(R2+Rf+R_L));// in W 
P_ODC = (I_LDC^2)*R_L;// in W
// The rectification efficiency 
Eta = (P_ODC/P_iAC)*100;// in %
disp(Eta,"The rectification efficiency in % is");
