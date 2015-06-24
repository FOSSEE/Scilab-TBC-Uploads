clc
//Initialization of variables
g = 9.81 // m/s^2
z1 = 5.0 // m
z2 = 0.488 // m
// Calculations
Q = z2*((2*(g)*(z1 - z2))/(1 - (z2/z1)^2))^0.5 
// results
printf (" the flow rate per unit width is %.2f m^2/s ",Q)
