// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 5, Example 3")
//Air at temprature (T1=20°C) and 1 atmospheric pressure flows over a flat plate with a free stream velocity(Uinf) of 1m/s.
Uinf=1;
T1=20;
//The length of plate is 1m and is heated over its entire length to a constant temprature of T2=100°C.
T2=100;
//For air at 20°C(The mean temprature of 100°C and 20°C),viscosity(mu=1.9*10^-5kg/(m*s)),density(rho=1.05kg/m^3),conductivity(k=0.03W/(m*K)),specific heat(cp=1.007kJ/(kg*K))
//Prandtl number is Pr=0.7
mu=1.9*10^-5;
rho=1.05;
k=0.03;
cp=1.007;
Pr=0.7;
//For laminar flow over a plate Nusselt number is Nux=0.332*Rex^0.5*Pr^(1/3)
//The boundary layer flow over a flat plate will be laminar if Reynolds number is Rex=(rho*Uinf*x)/mu<5*10^5
//First of all we have to check whether the flow is laminar or not.
//Let us check at x=1m
x=1;
disp("Reynolds number is")
ReL=(rho*Uinf*x)/mu
//There fore the flow is laminar and we can use the relationships of Nux,
//Thus Rex=(1.05*1*x)/(1.9*10^-5)=0.5526*10^5*x
//Therefore we can write Nux=(hx*x/k)=0.332*(0.5526*10^5*x)^0.5*Pr^(1/3)....or hx=2.08*x^(-1/2) W/(m^2*°C)
//hbarL is the average heat transfer coefficient over a length(L)
disp("The average heat transfer coefficient over a length(L)= 1m ,in W/m^2 is")
L=1;
hbarL=(1/L)*integrate("2.08*x^(-1/2)",'x',0,L)
//Q is the rate of heat transfer
disp("The rate of heat transfer in W/m of width is")
Q=hbarL*L*(T2-T1)

















