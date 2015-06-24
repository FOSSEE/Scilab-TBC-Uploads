//Chapter-8, Example 8.6, Page 346
//=============================================================================
clc
clear

//INPUT DATA
L=0.3;//Height of the duct in m
W=0.6;//Width of the duct in m
Ts=15;//Surface temperature in degree C
Ta=25;//Temeprature of air in degree C

//CALCULATIONS
Tb=(Ts+Ta)/2;//Film temperature in degree C
p=1.205;//Density in kg/m^3
k=0.02593;//Thermal conductivity in W/m.K
v1=(15.06*10^-6);//Kinematic viscosity in m^2/s
b=0.00341;//Coefficient of thermal expansion in 1/K
Cp=1005;//Specific heat in J/kg.K
Pr=0.705;//Prantl number
Ra=((9.81*b*L^3*(Ta-Ts)*Pr)/(v1^2));//Rayleigh number
Nux=(0.59*Ra^(0.25));//Nusselts number
hx=(Nux*k)/L;//Heat transfer coefficient in W/m^2.K
Lc=(W/2);//Characteristic length in m
Nu1=(0.15*Ra^(1/3));//Nussults number
h1=(Nu1*k)/Lc;//Heat transfer coefficient at top surface in W/m^2.K 
Nu2=0.27*(Ra)^(0.25);//Nusselts number
h2=(Nu2*k)/Lc;//Heat transfer coefficient at bottom surface in W/m^2.K
Q=((2*hx*L)+(W*(h1+h2)))*(Ta-Ts);//Rate of heat gained per unit length in W/m

//OUTPUT
mprintf('Rate of heat gained per unit length is %3.2f W/m',Q)

//=================================END OF PROGRAM==============================
