clc;
clear all;
disp("booundary layer thickness")

T=30+273;// degree C
U=1.2;//m/s velocity of air
L1=0.25;//m length 
mu=0.06717;//kg/hm
R=287;// N.m/ kg.m gas constant
L2=0.5;//m

rho=P/(R*T);//kg/m^3
rho
Re1=rho*L1*U*3600/mu;
Re1
delta1=4.64*L1/(Re1)^0.5;
disp("mm",delta1*1000,"Boundary layer thickness 1=")
Re2=rho*L2*U*3600/mu;
Re2
delta2=4.64*L2/(Re2)^0.5;
disp("mm",delta2*1000,"Boundary layer thickness 1=")
mx=5*rho*U*(delta2-delta1)/8;
disp("kg/h",mx*3600,"Mass entrainment = ")



