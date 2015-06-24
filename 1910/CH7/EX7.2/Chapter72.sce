// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 2")
//Atmospheric air at temprature,Tinf=300K and with a free stream Velocity Uinf=30m/s flows over a flat plate parallel to a side of length(L)=2m.
Tinf=300;
Uinf=30;
L=2;
//It is maintained at a uniform temprature of Tw=400K.
Tw=400;
//The properties of air at the film temprature of 350K are Prandtl number(Pr=0.705),conductivity(k=0.026W/(m*°C)),kinematic viscosity(nu=16.5*10^-6m^2/s)
Pr=0.705; 
k=0.026;
nu=16.5*10^-6;
//We first find the location x(for reynolds number,Re=5*10^5) where the transition occurs
//Rex is reynolds number
disp("The location x in m where the transition occurs")
Rex=5*10^5;
x=(nu*Rex)/Uinf
//The average Nusselt number for the laminar zone is given by Nux=0.664*Re^0.5*Pr^(1/3)
disp("The average Nusselt number for the laminar zone is")
Nux=0.664*Rex^0.5*Pr^(1/3)
//Heat flux is given by h=(k/x)*Nux
disp("Heat flux in W/(m^2*K) is")
h=(k/x)*Nux
//Reynolds number is given by ReL=(Uinf*L)/nu
disp("The reynolds number at L=2m is")
ReL=(Uinf*L)/nu
//The average heat transfer coefficient over L=2m is determined from hbarL=(k/L)*[0.037*(ReL)^(4/5)-871]*Pr^(1/3)
disp("The average heat transfer coefficient over L=2m in W/(m^2*K)")
hbarL=(k/L)*[0.037*(ReL)^(4/5)-871]*Pr^(1/3)
//The rate of heat transfer per unit width is Q=h*A*(Tinf-Tw)
//Since unit width is considerd so B=1
//Area(A)=L*B
B=1;
A=L*B;
disp("The rate of heat transfer per unit width in W is")
Q=hbarL*A*(Tw-Tinf)


















