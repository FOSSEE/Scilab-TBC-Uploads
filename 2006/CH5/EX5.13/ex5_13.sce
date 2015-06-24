clc;
m=10; // mass flow rate of chilled water in kg/s
V1=50; //velocity of chilled water at section 1 in m/s
z1=30; // Elevation of section 1 in m
V2=10; //velocity of chilled water at section 2 in m/s
z2=60; // Elevation of section 2 in m
h1=21; // Enthalpy of chilled water at section 1 in kJ/kg
h2=43; // Enthalpy of chilled water at section 2 in kJ/kg
W=35; // Rate of work done by pump in kW
g=9.80665; // Acceleration due to gravity in m/s^2
Q=m*(h2-h1)+(m*(V2^2-V1^2)/2000)+(m*g*(z2-z1)/1000)-W; // Steady flow energy equation
disp ("kW",Q,"The rate of Heat Transfer From Building (Error in textbook)= ");
