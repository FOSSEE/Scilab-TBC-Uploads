
clc
//initialization of variables
c = 0.92
F = 93 // ft^-1
nu = 2 // cs
dl = 63 // lb/ft^3
dg = 2.8 // lb/ft^3
G = 23 //lb/sex
//Calculations
G11 = c*((dl-dg)^0.5)/(((F)^0.5)*(nu^0.05))//  lb/ft^2-sec
A  = G/G11// ft^2
d = sqrt(4*A/%pi)//ft
//Results
printf("The diameter of the tower is %.1f ft",d)
