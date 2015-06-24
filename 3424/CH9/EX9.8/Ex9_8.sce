clc
//Initialization of variables
U = 88 //ft/s
Ds = 40//ft
v = 1.57*(10^-4) //ft^2/s
Dc = 15 //ft
CdS = 0.3
CdC = 0.7
d = 2.38*(10^-3) // slugs/ft^3
// Calculations
ReS = U*Ds/v
ReC = U*Dc/v
dS = 0.5*d*(U^2)*(%pi/4)*(Ds^2)*CdS
dC = 0.5*d*(U^2)*(Dc*50)*CdC
M = dS*(50+20) + dC*(50/2)
// results
printf("The corresponding moment needed to prevent from tripping is %.2e ft.lb",M)
