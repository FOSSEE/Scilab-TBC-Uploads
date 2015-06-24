// Exa 2.1
clc;
clear;
close;
// Given data
R_L = 1000;// in ohm
N2byN1= 4;
Vi= '10*sin(omega*t)'
// V2= N2byN1*V1
// V2= 40*sin(omega*t)
Vm= N2byN1*10;// in V
V_Lav= Vm/%pi;// in V
disp(V_Lav,"The average load voltage in volts is : ")
Im= Vm/R_L;// in A
I_dc= Im/%pi;// in A
I_av = I_dc;// in A
I_av= I_av*10^3;// in mA
disp(I_av,"Average load current in mA is");
V_Lrms = Vm/2;// in V
disp(V_Lrms,"RMS load voltage in V is");
I_rms = V_Lrms/R_L;// in A
I_rms= I_rms*10^3;// in mA
disp(I_rms,"RMS load current in mA is");
Eta = I_av^2/I_rms^2*100;// in %
disp(Eta,"Efficiency in % is");
V2rms= Vm/sqrt(2);// in V
TUF = ((I_av )^2)/(V2rms*I_rms)*100;// in %
disp(TUF,"Transformer utilization factor in % is");
Gamma= sqrt(V_Lrms^2-I_av^2)/V_Lav*100;
disp(round(Gamma),"Ripple factor in % is");
