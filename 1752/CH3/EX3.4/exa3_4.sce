//Exa 3.4
clc;
clear;
close;
//given data
format('v',9);
w=5*10^-2;// in meter
L=1;// in meter
t=2.5*10^-2;// in meter
h=47;// in W/m^2K
k=16.3;// in W/mK (for 18.8 steel)
T_0=100;// in degree C
T_infinite=20;// in degree C
Ac=w*t;// in square meter
rho=2*(w+t);
m=sqrt(h*rho/(k*Ac));
q_fin=k*Ac*m*(T_0-T_infinite)*[(tanh(m*L)+h/(k*m)  )/(1+h/(m*k)*tanh(m*L))];
disp("The heat lost by the fin of one meter length is : "+string(q_fin)+" W");
