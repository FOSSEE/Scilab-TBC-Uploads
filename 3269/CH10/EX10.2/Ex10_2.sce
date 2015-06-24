// Example 10.2
clear all;
clc;

// Given data
E = 1;                                          // Energy of gamma rays in MeV
X_dot = 1;                                      // Exposure rate in mR/hour
phi0 = 10^8;                                    // Intensity of gamma rays in gamma-rays/cm^2-sec from isotropic point source
// Using the data from Table II.5 for 1 MeV 
mua_rho_air = 0.028;                             // The ratio of total attenuation coefficient to density of air in cm^2/g
phi_b = X_dot/(0.0659*E*mua_rho_air);          // Buildup flux in gamma-rays/cm^2-sec
// Using Eq 10.14
printf(" \n The equation to calculate radius is \n %.2E  = %E * Bp*exp(-mu*R)/(4*pi*R^2) \n",phi_b,phi0);
// Using the data from Table II.4 for E = 1 MeV for Iron
mu_rho = 0.0595;                              // The ratio of total attenuation coefficient to density in cm^2/g
// From standard data tables for iron
rho = 7.864;                                  // Density of iron in g/cm^3
mu = mu_rho*rho;
// On solving the right hand side of equation
// RHS = 3.22*10^3*Bp*exp(-mu*R)/(mu*R)^2
// Let mu*R = x
// Using the data from Table 10.2 for isotropic point source of 1 MeV incident on iron material
Bp = [1.87 2.89 5.39 10.2 16.2 28.3 42.7];
x = [1 2 4 7 10 15 20];
for i = 1:7
    RHS(i) = (3.22*10^3*Bp(i)*exp(-x(i))/x(i)^2);
end
plot2d("nl",x(:),RHS(:));
xlabel("mu*R");
ylabel("RHS");
title("Semilog plot of RHS vs mu*R")
// From the graph
muR = 6.55;                                   // This is the value when RHS = 1
// Calculation
R = muR/mu;
// Result
printf("\n The shield radius required = %d cm \n",ceil(R));
