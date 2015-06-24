//Chapter-8, Example 8.5, Page 345
//=============================================================================
clc
clear

//INPUT DATA
L=0.8;//Height of the plate in m
W=0.08;//Width of the plate in m
Ts=170;//Surafce temperature in degree C
Tw=70;//Temperature of water in degree C
Tf=130;//Final temperature in degree C

//CALCULATIONS
Tb=(Ts+Tw)/2;//Film temperature in degree C
p=960.63;//Density in kg/m^3
k=0.68;//Thermal conductivity in W/m.K
v1=(0.294*10^-6);//Kinematic viscosity in m^2/s
b=0.00075;//Coefficient of thermal expansion in 1/K
Cp=4216;//Specific heat in J/kg.K
a=(1.68*10^-7);//Thermal diffusivity in m^2/s
Lc=(W/2);//Characteristic length in m
Ra=((9.81*b*Lc^3*(Tf-Tw))/(v1*a));//Rayleigh number
Nu1=(0.15*Ra^(1/3));//Nussults number
h1=(Nu1*k)/Lc;//Heat transfer coefficient at top surface in W/m^2.K 
Nu2=0.27*(Ra)^(0.25);//Nusselts number
h2=(Nu2*k)/Lc;//Heat transfer coefficient at bottom surface in W/m^2.K
Q=((h1+h2)*W*L*(Tf-Tw))/1000;//Rate of heat input to the plate in kW

//OUTPUT
mprintf('Rate of heat input to the plate necessary to maintain the temperature at %3.0f degree C is %3.2f kW',Tf,Q)

//=================================END OF PROGRAM==============================
