clc
//Initialization of variables
g = 32.2 //ft/s^2
z1 = 15 //ft
z3 = -5 //ft
p2 = -14.4 // psi
// Calculations
V3 = (2*g*(z1 - z3))^0.5
H =(((-p2 * 144) - 0.5*(1.94)*(V3)^2)/62.4) + 15 
// Results
printf("the maximum height of the hill is %.1f ft",H)
