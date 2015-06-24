//Chapter-8, Example 8.10, Page 351
//=============================================================================
clc
clear

//INPUT DATA
Ta=25;//Temperature of air in degree C
Ts=95;//Surface temperature of wire in degree C
D=0.0025;//Diameter of wire in m
R=6;//Resistivity in ohm/m

//CALCULATIONS
Tf=(Ts+Ta)/2;//Film temperature in degree C
k=0.02896;//Thermal conductivity in W/m.K
v1=(18.97*10^-6);//Kinematic viscosity in m^2/s
b=(1/333);//Coefficient of thermal expansion in 1/K
Pr=0.696;//Prantl number
Gr=((9.81*b*D^3*(Ts-Ta))/(v1^2));//Grashof number
Ra=(Gr*Pr);//Rayleigh number
Nu=(1.18*Ra^(1/8));//Nussults number
h=(Nu*k)/D;//Heat transfer coefficient in W/m^2.K
Q=(h*3.14*D*(Ts-Ta));//Rate of heat loss per unit length of wire in W/m
I=sqrt(Q/R);//Maximum current intensity in A

//OUTPUT
mprintf('Heat transfer coefficient is %3.2f W/m^2.K \nMaximum current intensity is %3.2f A',h,I)

//=================================END OF PROGRAM==============================
