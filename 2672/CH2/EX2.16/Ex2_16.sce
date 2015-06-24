//Ex_2_16
clc;
clear;
close;
format('v',5);
//given data :
LA=75/100;///m
LB=25/100;///m
lg=2/100;//m(airgap)
mu_r1=1000;///relative permeability
mu_r2=1500;///relative permeability
mu0=4*%pi*10^-7;//permeability of air
A=10*10^-4;//m^2//Area of core
N=1000;//turns
I=5;//A
S=LA/(mu0*mu_r1*A)+LB/(mu0*mu_r2*A)+lg/(mu0*A);//Wb/m^2
fi=N*I/S*1000;//mWb
disp(fi,"Flux produced in the air-gap(mWb)");
