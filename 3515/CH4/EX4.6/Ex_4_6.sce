// Exa 4.6
format('v',7);
clc;
clear;
close;
// Given data (From Exa 4.4)
R_D= 5;// in kΩ
R_D= R_D*10^3;// in Ω
R_SS= 25;// in kΩ
R_SS= R_SS*10^3;// in Ω
I= 0.8;// in mA
I=I*10^-3;// in A
i_D= I/2;// in A
unCox= 0.2;// mA/V^2
unCox= unCox*10^-3;// in A/V^2
WbyL= 100;
// Formula i_D= 1/2*unCox*WbyL*V_OV^2
V_OV= sqrt(2*i_D/(unCox*WbyL));// in V
gm= i_D/V_OV;// in A/V;
// gm mismatch have a negligible effect on Ad
Ad= gm*R_D;// in V/V(approx) 
// delta_gm= 1% of gm
delta_gm = gm*1/100;// in A/V
Acm= R_D/(2*R_SS)*delta_gm/gm;
CMRRindB= 20*log10(Ad/Acm);
disp(CMRRindB,"CMRR in dB is : ")
