clc
//Initialization of variables
P1 = 1456 // lb/ft^2
d = 0.001756 //slugs/ft^3
V = 293 // ft/s
// Calculations
P11 = P1/144 //psi
P2 = P1 + (d*V^2)/2 // lb/ft^2
P22 = d*V^2/(2*144) //psi
D = P22 //psi
// Results 
printf ("The static pressure at the altitude is %.2f psi",P11)
printf ("\nThe pressure in terms of gauge pressure is %.3f psi",P22)
printf ("\nThe pressure difference indicated by pitot tube is %.3f psi",D)

