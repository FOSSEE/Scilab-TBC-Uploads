
clc;
clear;
format('e',11);
I=1;
d=1*10^-3;
A=(3.14*d^2)/4;                 //cross section area.
rho_m=9.39*10^9;                //mobile charge density for silver.(calculated in example 6.4).
sigma=6.25*10^7;                //conductivity of silver.
J=I/A;
vd=J/rho_m;
disp(vd,"The drift velocity(in m/s)=");
E=J/sigma;
disp(E,"The electric field(in V/m)=");
M=vd/E;                         //M=mobility of electron.
disp(M,"The mobility of electron(in m^2/V.s)= ");
T=300;
me=9.109*10^-31;                //mass of electron.
K=1.38*10^-23;
vth=sqrt(2*K*T/me);             //estimating velocity of an electron whose kinetic energy is exactly 1KT for T=300k.
disp(vth,"The thermal velocity(in m/s)=");
r=vth/vd;                       //comparing drift velocity with the velocity attained due to thermal motion.
disp("times the drift velocity.",r,"The velocity attained due to thermal motion is ");
