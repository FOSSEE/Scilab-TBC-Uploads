clc
//Initialization of variables
Cd = 0.5 // Assumed Cd
v = 1.57*(10^-4) //ft^2/s
D = 0.125 // ft
dI = 1.84 //slugs/ft^3
dA = 2.38*(10^-3) //slugs/ft^3
g = 32.2 // ft/s^2
// Calculations
U = (4*dI*g*D/(3*dA*Cd))^0.5 //ft/s
Re = U*D/v 
// results
printf(" the correspoding value of velocity is %.2f ft/s ",U)
