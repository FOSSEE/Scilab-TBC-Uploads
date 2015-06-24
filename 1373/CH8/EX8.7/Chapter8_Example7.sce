//Chapter-8, Example 8.7, Page 348
//=============================================================================
clc
clear

//INPUT DATA
LH=0.08;//Horizantal length in m
LV=0.12;//Vertical length in m
Ts=50;//Surface temperature in degree C
Ta=0;//Temeprature of air in degree C

//CALCULATIONS
L=(LH*LV)/(LH+LV);//Characteristic length in m
Tb=(Ts+Ta)/2;//Film temperature in degree C
p=0.707;//Density in kg/m^3
k=0.0263;//Thermal conductivity in W/m.K
v1=(15.89*10^-6);//Kinematic viscosity in m^2/s
b=(1/300);//Coefficient of thermal expansion in 1/K
Pr=0.707;//Prantl number
Gr=((9.81*b*L^3*(Ts-Ta))/(v1^2));//Grashof number
Nu=0.55*Gr^(0.25);//Nussults number
h=(Nu*k)/L;//Heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Heat transfer coefficient is %3.2f W/m^2.K',h)

//=================================END OF PROGRAM==============================
