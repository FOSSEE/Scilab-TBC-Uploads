
//Exa:1.4
clc;
clear;
close;
//Given:
b_w=200000;//bandwidth in hertz
T=302;//temperature in kelvin
k=1.36*10^-23;//constant
R=1000//ohms
g=1000//Voltage gain 
V_n=sqrt(4*k*T*b_w*R) * 10^6;
printf("\n\n\t noise voltage = %f uV ",V_n);
