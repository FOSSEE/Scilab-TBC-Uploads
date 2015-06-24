// Exa 2.2
clc;
clear;
close;
// Given data
R_L = 1;// in K ohm
R_L = R_L * 10^3;// in ohm
V_m = 15;// in V
V_i = '15*sin(314*t)';
I_m= V_m/R_L;// in A
I_dc = I_m/%pi;// in A
I_dc = I_dc * 10^3;// in mA
disp(I_dc,"Average current through the diode in mA is");
I_drms = V_m/(2*R_L);
I_drms = I_drms * 10^3;// in mA
disp(I_drms,"RMS current in mA is");
I_m = V_m/R_L;
I_m = I_m*10^3;// in mA
disp(I_m,"Peak diode current in mA is");
PIV = 2*V_m;// in V
disp(PIV,"Peak inverse voltage in V is");
