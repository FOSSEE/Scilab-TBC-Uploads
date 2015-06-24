//Exa3.16
clc;
clear;
close;
// given data
rho=200;// in Kilo ohm-cm
rho=rho*10^-2;// in kilo ohm m
rho=rho*10^3;// in ohm meter
sigma=1/rho;
V_H=50;// in mV
V_H=V_H*10^-3;//in V
I=10;// in miu A
I=I*10^-6;//in A
B_z=0.1;// in Wb/m^2
w=3;//in mm
w=w*10^-3;//in meter
R_H=V_H*w/(B_z*I);
disp("Mobility of holes in p-type silicon bar is : ")
miu_h=sigma*R_H;
disp(string(miu_h)+" m^2/V-s");
