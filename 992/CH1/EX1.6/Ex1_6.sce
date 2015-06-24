
//Exa:1.6
clc;
clear;
close;
//Given:
b_w=3000;//bandwidth in hertz
T=300;//temperature in kelvin
k=1.36*10^-23;//constant
Vn=300*10^-6//ohms
R=Vn*Vn/(4*k*T*b_w);
printf("\n\n\t equivalent noise resistance = %f ohm ",R);