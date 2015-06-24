//Exa 3.6
clc;
clear;
close;
//given data
format('v',5)
T_0=100;// in degree C
T_infinite=30;// in degree C
T_L=100;// in degree C
d=6*10^-3;// copper rod dia in meter
L=50*10^-2;// developed length in meter
Ac=%pi*d^2/4;// in square meter
rho=%pi*d;// in meter
h=30;// in W/m^2K
k=330;// in W/mK 
m=sqrt(h*rho/(k*Ac));
//(i) Temperature distribution equation for the fin
// (T-T_infinite)/(T_0-T_infinite)=([(T_L-T_infinite)/(T_0-T_infinite)]*sinh(m*x)+sinh(m*(L-x)))/sinh(m*L)
//Temperature at
x=0.25;// in m
T= ([(T_L-T_infinite)/(T_0-T_infinite)]*sinh(m*x)+sinh(m*(L-x)))/sinh(m*L)*(T_0-T_infinite)+T_infinite;
disp("(i) Temperature at the centre of the rod is : "+string(T)+" degree C");
disp("(ii) Heat transfer rate from the fin- This is equivalent to two fins of length 25 cm long with insulated tip")
L=25*10^-2;// in meter
q=2*sqrt(h*rho*k*Ac)*(T_0-T_infinite)*tanh(m*L);
disp("Heat transfer by the rod is : "+string(q)+" watt");

