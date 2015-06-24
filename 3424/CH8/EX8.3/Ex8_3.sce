clc
// Intialization of variables
d = 1.23 //Kg/m3
V = 50 // m/s
D = 0.004 //m
U = 1.79*(10^-5) // N.s/M^2
f1 = 0.00467
l = 0.1 //m
f2 = 0.028 
// Calculations
Re = d*V*D/U
Dp = f1*l*d*(V^2)/(D*2)
Dp1 = 32*U*l*V/(D^2)
Dp2 = f2*l*d*(V^2)/(D*2)
// results
printf("the pressure drop at 0.1 section of the tube (laminar) is %.3f kN/m^2 ",Dp/10^3)
printf("\nthe pressure drop at 0.1 section of the tube (laminar)(aliter) is %.3f kN/m^2 ",Dp1/10^3)
printf("\nthe pressure drop at 0.1 section of the tube (turbulent) is %.3f kN/m^2 ",Dp2/10^3)
