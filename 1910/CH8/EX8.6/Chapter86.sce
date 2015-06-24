// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 8, Example 6")
//A vertical wire of length(L)=0.5m and  Dimeter(D)=0.1mm is maintained at temprature, Tw=400K
//The temprature of quicsent air is Tinf=300K
//Resistance(R) per  meter length is 0.12ohm
R=0.12;
Tw=400;
L=0.5;
D=0.1*10^-3;//in metre
Tinf=300;
//The required properties at the film temprature(Tf)=350K are kinematic viscosity(nu=20.75*10^-6m^2/s),Prandtl number(Pr=0.70),conductivity(k=0.03W/(m*°C))
Tf=350;
Pr=0.70;
nu=20.75*10^-6;
k=0.03;
//Area(A)=L*B m^2
A=%pi*D*L;
//Volume expansion Coefficient is Beta
Beta=1/(Tf);
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//Grashoff number is given by GrL=(g*beta*(Tw-Tinf)*L^3)/(nu)^2
disp("Grashoff number is")
GrL=(g*Beta*(Tw-Tinf)*L^3)/(nu)^2 
//Rayleigh number is defined as RaL=GrL*Pr
disp("Rayleigh number is")
RaL=GrL*Pr
disp("Therefore the flow is laminar")
//NuL is nusselt number
//C and n are constants
disp("Now we use NuL=0.59*RaL^(1/4) with the value of constants C=0.59,n=(1/4)")
disp("Nusselt number is")
NuL=0.59*RaL^(1/4)
//hbarL1 is the Average heat transfer coefficient
disp("Average heat transfer coefficient in W/(m^2*K)")
hbarL1=(NuL*k)/L
//Grashoff number GrD=GrL*(D/L)^3
disp("Grashoff number GrD=GrL*(D/L)^3")
GrD=GrL*(D/L)^3
//Thr correction factor is given By F=1.3*[(L/D)/GrD]^(1/4)+1.0
disp("Thr correction factor is")
F=1.3*[(L/D)/GrD]^(1/4)+1.0
disp("The correct value of Average heat transfer coefficient(hbarL2)=hbarL1*F in W/(m^2*K) is")
hbarL2=hbarL1*F
//The ohmic power loss is given by energy balance I^2*R=q=hbar2*A*(Tw-Tinf)
//q is the ohmic power loss
disp("The ohmic loss in W is ")
q=hbarL2*A*(Tw-Tinf)
//The current flowing in the wire I=(q/(R*L)^(1/2)
disp("The current flowing in the wire in Ampere is")
I=(q/(R*L))^(1/2)










