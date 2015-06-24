// Exa 7.12
clc;
clear;
close;
//given data
T= 100;// in micro sec
T=T*10^-6;//in se
V_sat= 12;// in volt
V1= 0.7;// in volt
V= 0.7;// in volt
V_D1= V;
V_D2=V_D1;
C1= 0.1;// in microF
C1=C1*10^-6;// in F
Bita1= 0.1;
// Formula T= R3*C1*log((1+V1/V_sat)/(1-Bita1))
R3= T/(C1*log((1+V1/V_sat)/(1-Bita1)));// in ohm
disp(R3*10^-3,"Value of R3 in kohm")
