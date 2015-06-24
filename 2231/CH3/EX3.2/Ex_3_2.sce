//Example 3_2
clc;
clear;close;

//Given data: 
R=80;//ohm
L=8;///mH
C=1.2;// micro F
Toff=14;//micro sec

//Solution :
omega_m=sqrt(1/(L*10^-3*C*10^-6)-R^2/4/(L*10^-3)^2);//rad/s
fm=omega_m/2/%pi;//Hz
T=1/fm;//sec
f=1/(T+2*Toff*10^-6);//Hz
disp(f,"Frequency of output in Hz : ");
