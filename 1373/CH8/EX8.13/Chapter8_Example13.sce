//Chapter-8, Example 8.13, Page 355
//=============================================================================
clc
clear

//INPUT DATA
L=0.015;//Thickness of the slot in m
D=2;//Dimension of square plate in m
T1=120;//Temperature of plate 1
T2=20;//Temperature of plate 2

//CALCULATIONS
Tf=(T1+T2)/2;//Film temperature in degree C
k=0.0295;//Thermal conductivity in W/m.K
v1=(2*10^-5);//Kinematic viscosity in m^2/s
b=(1/343);//Coefficient of thermal expansion in 1/K
Gr=((9.81*b*L^3*(T1-T2))/(v1^2));//Grashof number
ke=(0.064*k*Gr^(1/3)*(D/L)^(-1/9));//Effective thermal conductivity in W/m.K
Q=(ke*D^2*(T1-T2))/L;//Rate of heat transfer in W

//OUTPUT
mprintf('Effective thermal conductivity is %3.4f W/m.K \nRate of heat transfer is %3.1f W',ke,Q)

//=================================END OF PROGRAM==============================
