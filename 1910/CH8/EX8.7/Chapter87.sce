// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 8, Example 7")
//A long horizontal pressurized hot water of diameter(D)=200mm passes through a room where the air temprature is Tinf=25°C
D=.2;
Tinf=25;
//Length(L)=1m ,since the unit length is considered
L=1;
//Area(A)=pi*L*D
A=%pi*L*D;
//The pipe surface temprature is Tw=130°C
Tw=130;
//The properties of air at the film temprature Tf=77.5°C are kinematic viscosity(nu=21*10^-6m^2/s),Prandtl number(Pr=0.70),Conductivity(k=0.03W/(m*K))
Tf=77.5;
nu=21*10^-6;
k=0.03;
Beta=(1/(273+Tf));//Volume expansion coefficient in k^-1)
Pr=0.70;
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//Grashoff number is given by GrD=(g*beta*(Tw-Tinf)*L^3)/(nu)^2
disp("Grashoff number is")
GrD=(g*Beta*(Tw-Tinf)*D^3)/(nu)^2 
//Rayleigh number is defined as RaD=GrD*Pr
disp("Rayleigh number is")
RaD=GrD*Pr
disp("The flow is laminar over the entire cylinder")
//NuD is the nusselt number
disp("we use following equation to find Nusselt number NuD=[0.60+((0.387*RaD^(1/6))/(1+(0.559/Pr^(9/16)))^(8/27))]^2")
NuD=[0.60+((0.387*RaD^(1/6))/(1+(0.559/Pr^(9/16)))^(8/27))]^2
//hbar is the avearge heat transfer coefficient
disp("Average heat transfer coefficient in W/(m^2*K)")
hbar=(NuD*k)/D
//The heat loss per meter length is given by q=hbar*A*(Tw-Tinf)
disp("The heat loss per meter length in W is")
q=hbar*A*(Tw-Tinf)



















