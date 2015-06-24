// Example 10.4
clear all;
clc;

// Given data
E = 6;                                          // Energy of gamma rays in MeV
phi0 = 10^2;                                    // Intensity of gamma rays in gamma-rays/cm^2-sec from mono-directional beam
x_w = 100;                                      // Thickness of water in cm
x_Pb = 8;                                       // Thickness of lead in cm
// Using data from Table II.4 at 6 MeV
mu_w = 0.0275;                                  // Total attenuation coefficient of water in cm^(-1)
mu_Pb = 0.4944;                                 // Total attenuation coefficient of lead in cm^(-1)

mua_w = x_w*mu_w;                               // Attenuation due to thickness of water
mua_Pb = x_Pb*mu_Pb;                            // Attenuation due to thickness of lead

// Case (a) - Water is placed before the lead
printf(" \n In case (a), Buildup factor is only due to lead measured at %.2f",mua_Pb);
// Using the data from Table 10.1 at 6 MeV
B_Pb = 1.86;
phi_b_a = phi0*B_Pb*exp(-(mua_w+mua_Pb));

// Using the data from Table II.5 for 6 MeV 
mua_rho_air = 0.0172;                           // The ratio of total attenuation coefficient to density of air in cm^2/g
// Calculation
X_dot_a = 0.0659*E*mua_rho_air*phi_b_a;
// Result
printf("\n Exposure rate if water is placed before lead shield = %.2f uR/hour \n",X_dot_a*1000);

// Case (b) - Lead is placed before water
printf(" \n In case (b), Buildup factor is due to water and lead measured at %.2f and %.2f respectively",mua_w,mua_Pb);
// Using the data from Table 10.1 for water at 3.2 MeV,, which is the minimum point of mu_Pb curve
B_w = 2.72;
B_m = B_Pb*B_w;
phi_b_b = phi0*B_m*exp(-(mua_w+mua_Pb));

// Calculation
X_dot_b = 0.0659*E*mua_rho_air*phi_b_b;
// Result
printf("\n Exposure rate if lead is placed before water = %.2f uR/hour \n",X_dot_b*1000);
// The answer given in the textbook is wrong. This is because the intensity of gamma rays is wrongly taken for calculation. 

