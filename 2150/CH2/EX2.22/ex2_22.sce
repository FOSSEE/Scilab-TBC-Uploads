// Exa 2.22
clc;
clear;
close;
// Given data
R_L = 1;// in K ohm
R_L = R_L * 10^3;// in ohm
r_d = 10;// in ohm
V_m = 220;// in V
I_m = V_m/(r_d+R_L);// in A
disp(I_m,"Peak value of current in A is");
I_dc = (2*I_m)/%pi;// in A
disp(I_dc,"DC value of current in A is");
Irms= I_m/sqrt(2);// in A
r_f = sqrt((Irms/I_dc)^2-1)*100;// in %
disp(r_f,"Ripple factor in % is");
Eta = (I_dc)^2 * R_L/((Irms)^2*(R_L+r_d))*100;// in %
disp(Eta,"Rectification efficiency in % is");
