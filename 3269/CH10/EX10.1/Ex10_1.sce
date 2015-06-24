// Example 10.1
clear all;
clc;

// Given data
E0 = 2;                                        // Energy of gamma rays in MeV
a = 10;                                       // Thickeness of lead shield in cm
phi0 = 10^6;                                  // Intensity of gamma rays in gamma-rays/cm^2-sec

// 1.
// Using the data from Table II.4 for E0 = 2 MeV
mu_rho = 0.0457;                              // The ratio of total attenuation coefficient to density in cm^2/g
// From standard data tables for lead
rho = 11.34;                                  // Density of lead in g/cm^3
// Calculation
phi_u = phi0*exp(-(mu_rho*rho*a));
// Result
printf("\n Uncollided flux at the rear side of lead shield = %.2E gamma-rays/cm^2-sec \n",phi_u)

// 2.
// Using the data from Table 10.1 for 2 MeV of lead material
mua = mu_rho*rho*a;
B_4 = 2.41;                                     // Buildup factor if mu*a = 4
B_7 = 3.36;                                     // Buildup factor if mu*a = 7
// Using two point method of straight line for calculating buildup factor at mu*a
B_m = B_4+((mua-4)*((B_7-B_4)/(7-4)));
// Calculation
phi_b = phi_u*B_m;
// Result
printf("\n Buildup flux at the rear side of lead shield = %.2E gamma-rays/cm^2-sec \n",phi_b);

// 3.
// Using the data from Table II.5 for 2 MeV 
mua_rho_air = 0.0238;                           // The ratio of total attenuation coefficient to density of air in cm^2/g
// Calculation
X_dot = 0.0659*E0*mua_rho_air*phi_b;
// Result
printf("\n Exposure rate at the rear side of lead shield = %.1f mR/hour \n",X_dot);
