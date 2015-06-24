

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 7 Example # 7.4 ")

//Diameter of pipe in m
D = 7.62/100;
//Diameter and length of cylinder in m
d = 0.93/100;
l = 1.17/100;
//Initial temperature in degree C
Ti = 50;
//Final temperature in degree C
Tf = 350;
//Temperature of pipe surface in degree C
Tp = 400;
//Therefore film temp. at inlet in degree C
Tfi = (Ti+Tp)/2;
//Therefore film temp. at outlet in degree C
Tfo = (Tf+Tp)/2;
//Average film temp. in degree C
Tf = (Tfi+Tfo)/2;

//At this film temperature
//Kinematic viscosity in m2/s
nu = 0.0000482;
//Thermal conductivity in W/mC
k = 0.042;
//Density in kg/m3
rho = 0.6;
//Specific heat in J/kgC
c = 1081;
//Prandtl number
Pr = 0.71;
//Flow rte of gas in kg/h is
m = 5;

//Superficial velocity in m/h
Us = m/((((rho*%pi)*D)*D)/4);
//Cylinder packaging volume in m3
V = (((%pi*d)*d)*l)/4;
//Surface area in m2
A = (((2*%pi)*d)*d)/4+(%pi*d)*l;
//Equivalent packaging dia in meter
Dp = (6*V)/A;

//REynolds number based on this dia
Re = ((Us*3600)*Dp)/nu;
//From eq. 7.23
disp("Heat transfer coefficient in W/m2C is")
//Heat transfer coefficient in W/m2C
h = (14.3*k)/Dp
