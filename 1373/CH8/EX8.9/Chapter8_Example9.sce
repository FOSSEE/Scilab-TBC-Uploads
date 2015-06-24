//Chapter-8, Example 8.9, Page 350
//=============================================================================
clc
clear

//INPUT DATA
D=0.1;//Outer diamter of the pipe in m
Ta=30;//Ambient temperature of air degree C
Ts=170;//Surface temperature in degree C
e=0.9;//Emissivity 

//CALCULATIONS
Tb=(Ts+Ta)/2;//Film temperature in degree C
k=0.0321;//Thermal conductivity in W/m.K
v1=(23.13*10^-6);//Kinematic viscosity in m^2/s
b=0.00268;//Coefficient of thermal expansion in 1/K
Pr=0.688;//Prantl number
Ra=((9.81*b*D^3*(Ts-Ta)*Pr)/(v1^2));//Rayleigh number
Nu=(0.6+((0.387*Ra^(1/6))/(1+(0.559/Pr)^(9/16))^(8/27)))^2;//Nussults number
h=(Nu*k)/D;//Heat transfer coefficient in W/m^2.K
Q=(h*3.1415*D*(Ts-Ta))+(e*3.1415*D*5.67*10^-8*((Ts+273)^4-(Ta+273)^4));//Total heat loss per meter length of pipe in m

//OUTPUT
mprintf('Total heat loss per meter length of pipe is %3.2f W/m',Q)

//=================================END OF PROGRAM==============================
