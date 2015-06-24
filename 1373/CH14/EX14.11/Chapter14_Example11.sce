//Chapter-14, Example 14.11, Page 592
//=============================================================================
clc
clear

//INPUT DATA
T=27;//Temperature of swimming pool in degree C
Ts=37;//Surface temperature in degree C
h=0.4;//Relative humidity
D1=5;//Dimension of swimming pool in m
D2=15;//Dimension of swimming pool in m
v=2;//Speed of wind in m/s
v1=(15.89*10^-6);//Kinematic viscosity in m^2/s
p=0.0436;//Density in kg/m^3
DAB=(0.26*10^-4)//DAB value in m^2/s
Sc=(v1/DAB);//Schmidt number
Re=(v*D2)/v1;//Reynolds number
ShL=(((0.037*Re^(4/5))-870)*Sc^(1/3));//Equivalent Schmidt number
h1=(ShL*(DAB/D2));//Mass transfer coefficient for evaporation in m/s

//CALCULATIONS
Psat=3531;//Partial pressure of water vapour in N/m^2
pi=(0.4*6221);//Saturation pressure of water vapour in N/m^2
pt=101325;//Total pressure of air in N/m^2
pAs=(18*Psat)/(8361*(T+273));//Density at the water surface in kg/m
pAi=(18*pi)/(8316*(T+273));//Density at the water surface in kg/m
n=(h1*(pAs-pAi)*3600*24);//Rate of evaporation of water in kg/m^2 day
L=(n*D1*D2);//Total water loss from the swimming pool in kg/day

//OUTPUT
mprintf('Rate of evaporation of water is %3.1f kg/day',L)

//=================================END OF PROGRAM==============================
