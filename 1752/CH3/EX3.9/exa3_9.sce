//Exa 3.9
clc;
clear;
close;
disp("Temperature distribution equation for fin with insulated end is ");
disp("(T-T_infinite)/(T_0-T_infinite)= cosh(m*(L-x))/cosh(m*L)");

//given data
L=0.06;// in meter
A=4.64*10^-4;// in m^2
rho=0.12;// in m
h=442;// in W/m^2
T_0=773;// in K
T_infinite=1143;// in K
K=23.2;// in W/mK
m=sqrt(h*rho/(K*A));
q=sqrt(h*rho*K*A)*(T_0-T_infinite)*tanh(m*L);
disp("Heat transfer rate is : "+string(q)+" watt");

// Note: Answer in the book is wrong
