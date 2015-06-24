
//Exa:1.1
clc;
clear;
close;
//Given:
b_w=6000000;//bandwidth in hertz
T=290;//temperature in kelvin
k=1.36*10^-23;//constant
R=500//ohms
V_n=sqrt(4*k*T*b_w*R);
printf("\n\n\t noise voltage = %f v ",V_n);
