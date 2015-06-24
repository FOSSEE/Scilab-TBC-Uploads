//Exa 7.5
clc;
clear;
close;
//given data
T1=200+273;// in K
T2=100+273;// in K
A= 1*2;// in square meter
sigma=5.67*10^-8;
x_D= 1/4;
y_D= 1/2;
Fg12= 0.033;
q12= Fg12*sigma*A*(T1^4-T2^4);// in watt
disp(q12,"The net heat exchange between two surfaces in watt")
