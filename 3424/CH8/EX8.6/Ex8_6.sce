clc
// Intialization of variables
y = 62.4 // lb/ft^3
z2 = 20 //ft
d = 1.94 // slugs/ft^3
V2 = 19.6 //ft/s
V1 = 8.70 //ft/s
D = 0.0625 //ft
f = 0.0215
l = 60//ft
// Calculations
P1 =(z2*y + (d*(V2^2 - V1^2))/2)/(144) // psi
P11 =P1+ (( d*f*l*(V1^2)/(2*D)))/144 //psi
P12 = (d*(V1^2)*(18))/(2*144) //psi
P13 = P11 + P12 //psi
// results
printf(" pressure at point(1) if all losses are neglected is %.1f psi",P1)
printf(" \npressure at point(1) if major losses are included is %.1f psi",P11) 
printf(" \n pressure at point(1) if all losses are included is %.1f psi",P13)
