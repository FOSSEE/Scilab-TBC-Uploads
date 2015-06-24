clc
// Intialization of variables
U = 40*5280/3600 // ft/s
b = 200 // ft
D = 0.00238 // slugs/ft^3
// calculations
V2 = (((U^2)*(1 + (4)/(%pi)^2)))^0.5// ft/s
y2 = b/2 // ft
Df = (D*(V2^2 - U^2)/(2) + D*(y2 - 0)*32.2)/144 
// results
printf("the magnitude of velocity at point directly above origin is %.1f ft/s",V2)
printf("\nthe elevation of point above the plain is %.f ft",y2)
printf("\nthe difference in pressure is %.4f psi",Df) 
