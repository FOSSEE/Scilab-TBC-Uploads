clc
// solution

// initialization of variables
d=10/100 // diameter of cylinder in 'm'
P=600 // pressure in KPa
Patm=100 // atmospheric pressure in Kpa
K=4.8*1000 // spring constant in N/m 

deltax=(P-Patm)*(%pi*1000*d**2)/(4*K) // by balancing forces on piston
printf("The Compression in spring is %.3f m",deltax)
