//Chapter-8, Example 8.16, Page 362
//=============================================================================
clc
clear

//INPUT DATA
p=1;//Pressure of air in atm
Ta=27;//Temperature of air in degree C
D=0.02;//Diamter of the tube in m
v=0.3;//Velocity of air in m/s
Ts=127;//Surface temperature in degree C
L=1;//Length of the tube in m

//CALCULATIONS
k=0.0262;//Thermal conductivity in W/m.K
v1=(1.568*10^-5);//Kinematic viscosity in m^2/s
Pr=0.708;//Prantl number
b=(1/300);//Coefficient of thermal expansion in 1/K
ub=(1.847*10^-5);//Dynamic viscosity in Ns/m^2
us=(2.286*10^-5);//Viscosity of wall in Ns/m^2
Re=(v*D)/v1;//Reynolds number
Gr=((9.81*b*D^3*(Ts-Ta))/(v1^2));//Grashof number
Gz=(Re*Pr*(D/L));//Graetz number
Nu=(1.75*(ub/us)^0.14*(Gz+(0.012*(Gz*Gr^(1/3))^(4/3)))^(1/3));//Nussults number
h=(k*Nu)/D;//Heat transfer coefficient in W/m^2.K
Q=(h*3.14*D*L*(Ts-Ta));//Heat transfer in W

//OUTPUT
mprintf('Heat transfer in the tube is %3.2f W',Q)

//=================================END OF PROGRAM==============================
