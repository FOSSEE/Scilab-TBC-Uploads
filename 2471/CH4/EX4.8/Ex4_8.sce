clear ;
clc;
// Example 4.8
printf('Example 4.8\n\n');
printf('Page No. 103\n\n');

// given
d = 0.100;// Diameter of pipe in m
T1 = 383;// Surface temperature in Kelvin
T2 = 288;// Surrounding air temperature in Kelvin
e = 0.9;// Emissivity of pipe
A = %pi * d;// Surface Area per unit length in m^2/m

// By Stefan-Blotzmann law, the radiative heat transfer rate is   Q = 5.669*e*A*((T1/100)^4-(T2/100)^4)
Q = 5.669*e*A*((T1/100)^4-(T2/100)^4);// in W/m
printf('The radiative heat loss per unit length is %.0f W/sq.m',ceil(Q))
