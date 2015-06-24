clc
// Intialization of variables
V2 = 28.6// ft/s
V3 = 22.9 // ft/s
V4 = 22.9 // ft/s
V5 = 200 // ft/s
V6 = 200 // ft/s
V7 = 80 // ft/s
V8 = 44.4 // ft/s
g = 32.2 //ft/s^2
d = 0.0765 // lb/ft^2
A = 4.0 //ft^2
// Calculations
Ht = (0.2*(V7^2 + V8^2 + V2^2 + V3^2) + 0.6*(V6)^2 + 0.2*V5^2 + 4.0*V4^2 )/(2*g) //ft
Dp = d*Ht/144 //psi 
Pa = d*A*V5*Ht/550 // hp
//results
printf(" the horse supplied to the fluid by the fan is %.1f hp",Pa)
printf(" \n the value of P1-P0 is %.3f psi",Dp)
