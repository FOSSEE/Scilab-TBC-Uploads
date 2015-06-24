clc;funcprot(0);//EXAMPLE 11.3
// Initialisation of Variables
pc=7.2;.................//Petrol consumed in kg/h
spgrp=0.75;................//Specific gravity of fuel
rhow=1000;.................//Density of water in kg/m^3
t1=300;...................//Temperature of air in Kelvin
afr=15;....................//Air fuel ratio
d2=0.024;....................//Diameter of choke tube in m
z=0.0042;...................//The height of the jet above petrol level in float chamber in m
Cda=0.8;....................//Coefficient of discharge for air
Cdf=0.7;.....................//Coefficient of discharge for fuel
p1=1.013;.....................//Atmospheric pressure in bar
g=9.81;.......................//Acceleration due to gravity in m/s^2
R=287;........................//Gas constant in J/kg.K
//calculations
mf=pc/3600;....................//Rate of fuel consumption in kg/sec
rhof=spgrp*rhow;...............//Density of fuel in kg/m^3
rhoa=(p1*10^5)/(R*t1);............//Density of air in kg/m^3
ma=mf*afr;.......................//Air flow rate 
delpa=((ma/(Cda*(%pi/4)*d2^2))^2)*(1/(2*rhoa));....................//Suction in N/m^2
df=sqrt((mf/sqrt(2*rhof*(delpa-(g*z*rhof))))*(1/(Cdf*(%pi/4))));.................//Diameter of fuel jet in m
disp(df*1000,"Diameter of the fuel jet (in mm):")
