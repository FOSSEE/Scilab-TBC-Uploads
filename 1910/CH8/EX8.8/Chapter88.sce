// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 8, Example 8")
//An electric immersion heater diameter(D)=8mm and length(L)=300mm is rated at power input,P=450W
P=450;
L=0.3;//in metre
D=0.008;//in metre
//If the heater is horizontally positioned in a large tank of stationery water at temprature,Tinf=20°C
Tinf=20;
//At steady state ,The electrical power input(P)=(Q)Heat loss from the heater
//P=Q
//Q=hbarD*(pi*D)*L*(Tw-Tinf)
//This gives Tw(surface temprature)=Tinf+(P/(hbarD*pi*D*L))
//So we need to find Average heat transfer coefficient,hbarD.
//In this problem we need to take guess of steady state surface temprature(Tw) and iterate the solution for Tw till a desired convergence is achieved.
disp("Let us take first trial Tw=64°C")
Tw=64;
Tf=(Tw+Tinf)/2;//mean film temprature
//At this temprature of 42°C,The required properties of water kinematic viscosity(nu=6.25*10^-7m^2/s),Prandtl number(Pr=4.16),Conductivity(k=0.634W/(m*K)),Beta=4*10^-4K^-1
Beta=4*10^-4;//Volume expansion coefficient
nu=6.25*10^-7;
Pr=4.16;
k=0.634;
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//Grashoff number is given by GrD=(g*beta*(Tw-Tinf)*L^3)/(nu)^2
disp("Grashoff number is")
GrD=(g*Beta*(Tw-Tinf)*D^3)/(nu)^2 
//Rayleigh number is defined as RaD=GrD*Pr
disp("Rayleigh number is")
RaD=GrD*Pr
disp("The flow is laminar ")
///NuD is nusselt number
//hbarD is Average heat transfer coefficient
disp("we use following equation to find Nusselt number NuD=[0.60+((0.387*RaD^(1/6))/(1+(0.559/Pr^(9/16)))^(8/27))]^2")
NuD=[0.60+((0.387*RaD^(1/6))/(1+(0.559/Pr^(9/16)))^(8/27))]^2
disp("Average heat transfer coefficient in W/(m^2*K)")
hbarD=(NuD*k)/D
disp("Hence,steady state Surface temprature in °C is")
Tw=Tinf+(P/(hbarD*%pi*D*L))
disp("Hence we see that our guess is in excellent agreement with the calculated value")












