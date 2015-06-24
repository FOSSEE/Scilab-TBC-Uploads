// Example 10.8
clear all;
clc;

// Given data
R = 7*30.48;                                    // Distance of core from the center of shield in cm
// Assuming average energy produced per fission reaction is 200 MeV 
P = 10;                                         // Power of teaching reactor in Watts
P_fission = 200*10^6*1.6*10^(-19);              // Energy produced in a fission reaction in terms of joule
fission_rate = P/P_fission;                     // Number of fission reactions

// By assuming that the gammma rays are of equal energy of 1 MeV (Group 1) and looking into Table 10.5
E1 = 1;                                          // Energy of gamma rays in MeV (Assumed)
chi_pn1 = 5.2;                                    // Number of prompt gamma rays emitted per fission with energy 2 MeV
S1 = chi_pn1*fission_rate;                        // Source strength in gamma rays/sec
// Using the data from Table II.4 for E = 1 MeV for water
mu1 = 0.0996;                                    // Mass attenuation coefficient at 1 MeV in cm^-1
printf(" \n Buildup factor is due to water measured at %.2f",mu1*R);
// Using the data from Table 10.2 at 1 MeV
B_p1 = 373;
phi_b1 = (S1/(4*%pi*R^2))*B_p1*exp(-mu1*R);      // Buildup flux
// Using the data from Table II.5 for 1 MeV 
mua_rho_air1 = 0.028;                            // The ratio of total attenuation coefficient to density of air in cm^2/g
// Calculation
X_dot1 = 0.0659*E1*mua_rho_air1*phi_b1;
printf("\n Exposure rate due to group 1 = %.4f mR/hour \n",X_dot1);

// By assuming that the gammma rays are of equal energy of 2 MeV (Group 2) and looking into Table 10.5
E2 = 2;                                          // Energy of gamma rays in MeV (Assumed)
chi_pn2 = 1.8;                                   // Number of prompt gamma rays emitted per fission with energy 2 MeV
S2 = chi_pn2*fission_rate;                        // Source strength in gamma rays/sec
// Using the data from Table II.4 for E = 2 MeV for water
mu2 = 0.0493;                                    // Mass attenuation coefficient at 2 MeV in cm^-1
printf(" \n Buildup factor is due to water measured at %.2f",mu2*R);
// Using the data from Table 10.2 at 2 MeV
B_p2 = 13.1;
phi_b2 = (S2/(4*%pi*R^2))*B_p2*exp(-mu2*R);      // Buildup flux 
// Using the data from Table II.5 for 2 MeV 
mua_rho_air2 = 0.0238;                           // The ratio of total attenuation coefficient to density of air in cm^2/g
// Calculation 
X_dot2 = 0.0659*E2*mua_rho_air2*phi_b2;
printf("\n Exposure rate due to group 2 = %.1f mR/hour \n",X_dot2);

// By assuming that the gammma rays are of equal energy of 4 MeV (Group 3) and looking into Table 10.5
E3 = 4;                                          // Energy of gamma rays in MeV (Assumed)
chi_pn3 = 0.22;                                   // Number of prompt gamma rays emitted per fission with energy 4 MeV
S3 = chi_pn3*fission_rate;                        // Source strength in gamma rays/sec
// Using the data from Table II.4 for E = 4 MeV for water
mu3 = 0.0339;                                    // Mass attenuation coefficient at 4 MeV in cm^-1
printf(" \n Buildup factor is due to water measured at %.1f",mu3*R);
// Using the data from Table 10.2 at 4 MeV
B_p3 = 5.27;
phi_b3 = (S3/(4*%pi*R^2))*B_p3*exp(-mu3*R);      // Buildup flux 
// Using the data from Table II.5 for 4 MeV 
mua_rho_air3=0.0194;                             // The ratio of total attenuation coefficient to density of air in cm^2/g
// Calculation
X_dot3 = 0.0659*E3*mua_rho_air3*phi_b3;
printf("\n Exposure rate due to group 3 = %.1f mR/hour \n",X_dot3);

// By assuming that the gammma rays are of equal energy of 6 MeV (Group 4) and looking into Table 10.5
E4 = 6;                                          // Energy of gamma rays in MeV (Assumed)
chi_pn4 = 0.025;                                 // Number of prompt gamma rays emitted per fission with energy 4 MeV
S4 = chi_pn4*fission_rate;                       // Source strength in gamma rays/sec
// Using the data from Table II.4 for E = 6 MeV for water
mu4 = 0.0275;                                    // Mass attenuation coefficient at 6 MeV in cm^-1
printf(" \n Buildup factor is due to water measured at %.2f",mu4*R);
// Using the data from Table 10.2 at 6 MeV
B_p4 = 3.53;
phi_b4 = (S4/(4*%pi*R^2))*B_p4*exp(-mu4*R);       // Buildup flux 
// Using the data from Table II.5 for 4 MeV 
mua_rho_air4=0.0172;                             // The ratio of total attenuation coefficient to density of air in cm^2/g
// Calculation
X_dot4 = 0.0659*E4*mua_rho_air4*phi_b4;
printf("\n Exposure rate due to group 3 = %.2f mR/hour \n",X_dot4);

//Calculation
X_dot = X_dot1+X_dot2+X_dot3+X_dot4;
// Result
printf("\n The total exposure rate due to all groups = %.2f mR/hour \n",X_dot);


