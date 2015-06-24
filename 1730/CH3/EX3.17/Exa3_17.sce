//Exa3.17
clc;
clear;
close;
// given data
N_D=1*10^21;// in /m^3
B_Z=0.2;// in T
J=600;// in A/m^2
n=N_D;
d=4;//in mm
d=d*10^-3;// in meterr
e=1.6*10^-19;// in C  (electron charge)
// Formula  V_H*w/(B_Z*I) = 1/(n*e) , hence V_H=B_Z*I/(n*e*w)
// where I=J*w*d
// putting I=J*w*d in V_H=B_Z*I/(n*e*w), we get
V_H=B_Z*J*d/(n*e);// in V
V_H=V_H*10^3;// in mV
disp("Hall Voltage is : "+string(V_H)+" mV");
