// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 1")
//Engine oil at temprature,Tinf=60°C with a velocity of Uinf=1m/s flows over plate of length(L)=5m whose temprature(Tw)=30°C
Tw=30;
L=5;
Uinf=1;
Tinf=60;
//The properties at a film temprature of 45°C are as follows density(rho=870kg/m^3),Prandtl number(Pr=2850),conductivity(k=0.145W/(m*°C)),kinematic viscosity(nu=250*10^-6m^2/s).
rho=870;
Pr=2850;
k=0.145;
nu=250*10^-6;
disp("First we check from reynolds no. that the flow is laminar or tubulent")
//Reynolds number is given by Re=(Uinf*L)/nu
disp("Reynold number is")
Re=(Uinf*L)/nu
disp("which is less than critical reynolds number,So the flow is laminar.")
//NuL is the average nusselt number
disp("The average nusselt number over the entire length under the situation is given by NuL=0.664*Re^0.5*Pr^(1/3)")
NuL=0.664*Re^0.5*Pr^(1/3)
//Heat flux is given by h=(k/L)*NuL
disp("Heat flux in W/(m^2*K) is")
h=(k/L)*NuL
//The rate of heat transfer per unit width is Q=h*A*(Tinf-Tw)
//Since unit width is considerd so B=1
//Area(A)=L*B
B=1;
A=L*B;
disp("The rate of heat transfer per unit width in W is")
Q=h*A*(Tinf-Tw)
