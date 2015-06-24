clc
// initialisation of variables
G= 9200 // N/m^2
g1= 9.81 // m/sec^2
g2= 9.805 //m/sec^2
// Calculations
rho= G/g1
G2= rho*g2
// Results
printf ('Density of Fluid = %.1f N sec^2/m^4',rho)
printf ('\n New Specific Weight = %.f N/m^3',G2)
