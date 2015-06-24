// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 8, Example 1")
//Water is heated by a vertical flat plate  length(L=200mm or .2m )by breadth(B=200mm) which is maintained at temprature,Tw=60°C
Tw=60;
L=.2;
B=.2;// in metre
//Area(A) is L*B 
A=L*B;
//Water is at temprature,Tinf=20°C
Tinf=20;
//At mean film temprature 40°C The physical properties parameters can be taken as 
//conductivity(k=0.0628W/(m*K)),Prandtl number(Pr=4.34),density(rho=994.59kg/m^3),kinematic viscosity(nu=0.658*10^-6m^2/s),volume expnasion coefficient(Beta=3*10^-4K^-1))
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
disp("Therefore the flow is turbulent")
disp("Now we use [(hbarL*L)/k]=0.10*(GrL*Pr)^(1/3)")
//hbarL is the average heat transfer coefficient
disp("The average heat transfer coefficient in W/(m^2*K) is")
hbarL=(0.10*(GrL*Pr)^(1/3)*k)/L
//The rate of heat transfer is given by q=hbarL*A*(Tw-Tinf)
disp("The rate of heat transfer in W is")
q=hbarL*A*(Tw-Tinf)













