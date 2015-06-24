// Scilab code Exa3.11 : : Page-125(2011)
clc; clear;
P = 1;     // Momentum of the proton, GeV/c
M_0 = 0.94;    // Rest mass of the proton, GeV/c-square
G = sqrt((P/M_0)^2+1) // Lorentz factor
V = sqrt(1-1/G^2);     // Minimum velocity of the electron, m/s
u = 1/V;     // Refractive index of the gas
printf("\nThe refractive index of the gas = %4.2f", u); 
u = 1.6;     // Refractive index
theta = round (acos(1/(u*V))*180/3.14);     // Angle at which cerenkov radiatin is emitted,degree
printf("\nThe angle at which Cerenkov radiation is emitted = %d degree",theta) 

// Result 
//  The refractive index of the gas = 1.37
// The angle at which Cerenkov radiation is emitted = 31 degree 
