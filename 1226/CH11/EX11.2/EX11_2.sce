clc;funcprot(0);//EXAMPLE 11.2
// Initialisation of Variables
cp=5;.................//Consumption of petrol in kg/h
afr = 16;...............//Air fuel ratio
Af=2*10^(-6);..............//Fuel orifice area in m^2
z=0.005;................//Distance between tip of jet and level of petrol in float chamber in m
spgrp=0.75;..............//Specific gravity of petrol
rhow=1000;.................//Density of water in kg/m^3
rhoa=1.2;....................//Density of air in kg/m^3
Cda=0.8;...............//Coefficient of discharge for venturi throat
g=9.81;...............//Acceleration due to gravity in m/sec^2
//Calculations
mf=cp/3600;.................//Fuel consumed in kg/sec
delp=(((mf/(Af*Cda))^2)*(1/(2*spgrp*rhow)))+(g*z*spgrp*rhow);
disp(delp,"Suction at the throat in (N/m^2)")
ma=mf*afr;................//Air flow rate
Atsqr=((ma/Cda)^2)*(1/(2*rhoa*delp));....................//Throat area in m^2
disp(sqrt(Atsqr)*10^4,"Throat area (in cm^2)")
