// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 7")
//A fine wire having a diameter(D)=0.04mm is placed in an air stream at temprature,Tinf=25°C having a flow velocity of Uinf=60m/s perpendicular to wire.
D=0.04;
Tinf=25;
Uinf=60;
//An electric current is passed through the wire ,raising its surface temprature to Tw=50°C
Tw=50;
//For air at the film temprature of 37.5°C,conductivity(k=0.027 W/(m*K)),kinematic viscosity(nu=17*10^-6m^2/s) and Prandtl number(Pr=0.71)
k=0.027;
nu=17*10^-6;
Pr=0.71;
//Re is reynolds number
disp("Reynolds number is")
Re=Uinf*(D*10^-3)/nu
//C and n are constants
//The values of C and n are found  for Re=141 are C=0.683 and n=0.466
//NuD is nusselt number
disp("Nusselt number is")
NuD=(0.683)*Re^0.466*Pr^(1/3)
//hbar is the average Heat transfer coefficient
disp("The average Heat transfer coefficient in W/(m^2*K) is")
hbar=(k/(D*10^-3))*NuD
//Heat transfer per unit length(qL) is given by pi*D*hbar*(Tw-Tinf)
disp("Heat transfer per unit length in W/m is")
qL=%pi*(D*10^-3)*hbar*(Tw-Tinf)
//NuD is nusselt number
disp("If we use eq NuD=0.3+[(0.62*Re^0.5*Pr^(1/3))/(1+(0.4/Pr^(2/3))^(1/4)]*[1+(Re/282000)^(5/8)]^(4/5)")
NuD=0.3+[(0.62*Re^0.5*Pr^(1/3))/(1+(0.4/Pr)^(2/3))^(1/4)]*[1+(Re/282000)^(5/8)]^(4/5)
//hbar is the average Heat transfer coefficient
disp("The average Heat transfer coefficient in W/(m^2*K) is")
hbar=(k/(D*10^-3))*NuD
//Heat transfer per unit length(qL) is given by pi*D*hbar*(Tw-Tinf)
disp("Heat transfer per unit length in W/m is")
qL=%pi*(D*10^-3)*hbar*(Tw-Tinf)


























