// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 8, Example 2")
//The thin plates are kept at temprature(Tw)=60°C while the temprature of water bath(Tinf)=20°C
Tw=60;
Tinf=20;
//The plates have length(L)=90mm or .09m
L=.09;
//The minimum spacing between the plates will be twice the thickness of the boundary layer at the trailing edge where x=0.09.
disp("The minimum spacing between the plates will be twice the thickness of the boundary layer at the trailing edge where x=0.09")
x=.09;
//At mean film temprature 40°C The physical properties parameters can be taken as
// conducivity(k=0.0628W/(m*K)),Prandtl number(Pr=4.34),Density(rho=994.59kg/m^3),kinematic viscosity(nu=0.658*10^-6m^2/s),Volume expansion coefficient(Beta=3*10^-4K^-1)
k=0.628;
Pr=4.34;
rho=994.59;
nu=0.658*10^-6;
Beta=3*10^-4;
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//Grashoff number is given by GrL=(g*beta*(Tw-Tinf)*L^3)/(nu)^2
disp("Grashoff number is")
GrL=(g*Beta*(Tw-Tinf)*L^3)/(nu)^2
//Rayleigh number is defined as RaL=GrL*Pr
disp("Rayleigh number is")
RaL=GrL*Pr
disp("Since Ra<10^9,Therefore the flow is laminar")
//delta is the thickness of the boundary layer
disp("The thickness of the boundary layer in metre is")
delta=x*3.93*Pr^(-1/2)*(0.952+Pr)^(1/4)*GrL^(-1/4)
//spac is the minimum spacing 
disp("The minimum spacing in metre is")
spac=2*delta

















