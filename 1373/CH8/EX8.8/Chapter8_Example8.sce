//Chapter-8, Example 8.8, Page 349
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Outer diameter of the pipe in m
Ts=100;//Surface temperature in degree C
Ta=20;//Temperature of air in degree C
L=3;//Length of pipe in m

//CALCULATIONS
Tf=(Ts+Ta)/2;//Film temperature in degree C
k=0.02896;//Thermal conductivity in W/m.K
v1=(18.97*10^-6);//Kinematic viscosity in m^2/s
b=(1/333);//Coefficient of thermal expansion in 1/K
Pr=0.696;//Prantl number
Gr=((9.81*b*L^3*(Ts-Ta))/(v1^2));//Grashof number
Ra=(Gr*Pr);//Rayleigh number
Nu=(0.1*Ra^(1/3));//Nussults number
h=(Nu*k)/L;//Heat transfer coefficient in W/m^2.K
Q=(h*3.14*D*(Ts-Ta));//Rate of heat loss per meter length of pipe in W/m

//OUTPUT
mprintf('Rate of heat loss per meter length of pipe is %3.2f W/m',Q)

//=================================END OF PROGRAM==============================
