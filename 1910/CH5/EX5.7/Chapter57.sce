// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 5, Example 7")
//A wall is exposed to nitrogen at one atmospheric pressure and temprature,Tinf=4°C.
Tinf=4;
//The wall is H=2.0m high and B=2.5m wide and is maintained at temprature,Ts=56°C
Ts=56;
H=2;
B=2.5;
A=H*B;//area is(A)
//The average nusselt number NuHbar over the height of the plate is given by NuHbar=0.13*(Gr*Pr)^(1/3)
//The properties of nitrogen at mean film temprature(Tf) is (56+4)/2=30°C are given as density(rho=1.142kg/m^3) ,conductivity(k=0.026W/(m*K)),
//kinematic viscosity(nu=15.630*10^-6 m^2/s) ,Prandtl number(Pr=0.713)
rho=1.142;
k=0.026;
nu=15.630*10^-6;
Pr=0.713;
Tf=30;
//We first have to detrmine the value of Grashoff number,Gr.In consideration of nitrogen as an ideal gas,we can write
//Beta(The volumetric coefficient of expansion)=1/T
disp("Beta(The volumetric coefficient of expansion in K^-1 is")
Beta=1/(273+Tf)
//Now Gr=(g*Beta*(Ts-Tinf)*H^3)/nu^2
g=9.81;//acceleration due to gravity
disp("Grashoff number is")
Gr=(g*Beta*(Ts-Tinf)*H^3)/nu^2
disp("The average nusselt number is")
NuHbar=0.13*(Gr*Pr)^(1/3)
//hbar is the heat flux
disp("Heat flux hbar in W/(m^2*°C)")
hbar=NuHbar*k/H
//Q is the heat loss from the plate
disp("The heat loss from the plate in W is")
Q=hbar*A*(Ts-Tinf)














