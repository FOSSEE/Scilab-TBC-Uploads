clc;
clear all;
Eg1=0.36*1.6*1e-19;
Eg2=0.72*1.6*1e-19
k=1.38*1e-23;//boltzman constant
T=300;//tempreture in kelvin
//in this formula ni=2*((2*%pi*k*T/h^2)^(3/2))*((me*mp)^(3/4))*exp(-Eg/(2*k*T))ratio of nip/niq is given by:
x=exp((Eg2-Eg1)/(2*k*T));//ratio of nip/niq
disp(x,'ratio of nip/niq is=');
//slight variation in ans than book.. checked in calculator also
