//Exa 6.2
clc;
clear;
close;
//given data
Pr=0.694;
K=0.0296;// in W/mK
rho=1.029;// in kg/m^3
miu=20.6*10^-6;// in poise
x=.2;// in m
T_s=110;// in degree C
T_infinite=30;// in degree C
T_f=(T_s+T_infinite)/2;// in degree C
T_f=T_f+273;// in K
Bita=1/T_f;
g=9.81;
del_T=T_s-T_infinite;
Gr=(rho^2*g*Bita*del_T*x^3)/miu^2;
Ra=Gr*Pr;
//since Rayleigh number is less than 10^10, hence
Nu=0.68*Pr^(1/2)*Gr^(1/4)/((.952+Pr)^(1/4));
h=Nu*K/x;
A=2*0.2*1;
q=h*A*(T_s-T_infinite);
disp("Heat transfer rate is : "+string(q)+" W");
