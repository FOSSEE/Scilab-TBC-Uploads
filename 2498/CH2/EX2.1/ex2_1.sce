// Exa 2.1
clc;
clear;
close;
format('v',6)
// Given data
N2 = 4;
N1 = 1;
R_L = 1*10^3;// in ohm
 Vm = 40;// in V
V_Lav = Vm/%pi;// in V
// The average load voltage 
V_LDC = V_Lav;// in V
disp(V_LDC,"The average load voltage in V is");
Im = Vm/R_L;// in A
I_DC = Im/%pi;// in A
I_DC= I_DC*10^3;// in mA
disp(I_DC,"The average load current in mA is");
I_DC= I_DC*10^-3;// in A
// The RMS voltage
V_Lrms = Vm/2;// in V
disp(V_Lrms,"The RMS voltage in V is");
// The RMS current
Irms = V_Lrms/R_L;// in A
Irms= Irms*10^3;// in mA
disp(Irms,"The RMS current in mA is");
Irms= Irms*10^-3;// in A
//Eta = (P_ODC/P_iAC)*100;
I_Loc = I_DC;// in A
P_ODC = (I_Loc^2)*R_L;// in W
P_iAC = (Irms^2)*R_L;// in W
// The efficiency of rectification 
Eta = (P_ODC/P_iAC)*100;// in %
disp(Eta,"The efficiency of rectification in % is");
V2rms = Vm/sqrt(2);
I2rms = Irms;// in A
// The value of TUF 
TUF = ((P_ODC)/(V2rms*I2rms))*100;// in %
disp(TUF,"The value of TUF in % is");
// The ripple factor 
Gamma = (sqrt((V_Lrms^2)-(V_LDC^2)))/V_LDC;
Gamma = round(Gamma * 100);// in % done by own
disp(Gamma,"The ripple factor in % is");
