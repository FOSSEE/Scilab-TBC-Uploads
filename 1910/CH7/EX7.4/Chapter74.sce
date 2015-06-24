// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 4")
//Castor oil at temprature,Tinf=36°C flows over a heated plate of length,L=6m and breadth,B=1m at velocity,Uinf=0.06m/s
Tinf=36;
L=6;
B=1;
Uinf=0.06;
//For a surface temprature at Tw=96°C
Tw=96;
//The properties at film temprature 66°C conductivity(k=0.21W/(m*K)),kinematic viscosity(nu=6*10^-5m^2/s),Thermal diffusivity(alpha=7.22*10^-8 m^2/s)
nu=6*10^-5;
k=0.21;
alpha=7.22*10^-8;
//ReL is reynolds number
disp("(a)Reynolds number is")
ReL=(Uinf*L)/nu
//Therefore the boundary layer is laminar over the entire plate.
//delta is the boundary layer thickness
disp("The boundary layer thickness in m is")
delta=(5*L)/(ReL)^0.5
//Pr is prandtl number.
disp("Prandtl no. is")
Pr=nu/alpha
//deltaT is thermal boundary layer thickness
disp("The thermal boundary layer thickness in m is")
deltaT=delta/(Pr^(1/3))//NOTE:Answer in the book is incorrect(calculation mistake)
//NuL is the nusselt number
disp("(b)Since the prandtl number is high So Nusselt no. is")
NuL=0.339*(ReL)^0.5*Pr^(1/3)
//Heat flux is given by hL=(k/L)*NuL
disp("Heat flux in W/(m^2*K) is")
hL=(k/L)*NuL
//hbarL is the average heat flux over length L
disp("hbarL in W/(m^2*K) is")
hbarL=2*hL
//The rate of heat transfer is Q=h*A*(Tinf-Tw)
//Area(A)=L*B
A=L*B;
disp("(c)The rate of heat transfer in W is")
Q=hbarL*A*(Tw-Tinf)

























