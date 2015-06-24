// Example 9.11
clear all;
clc;

// Given data
V_W = 2200;                           // Volume of water inatke in terms of cm^3/day
// 1 litre = 1000 gram(g)
M = 43*1000;                          // Mass of water present in standard man according to standards
// Using the data from Table 9.13
MPD = 0.1/7;                          // Maximum Permissible Dose (MPD) in rem/day
// Using the data from Table 9.15
zeta = 0.01;                          // Effective energy equivalent in MeV
q = 1;                                // The fraction of Tritium that goes inside by ingestion
T_b = 11.9;                           // Biological Half life of Tritium in years
lambda_b = 0.693/T_b;                 // Biological decay constant of Tritium in years^-1 

// As biological and radiological half lives are less than 50 year intake period, the exponential term (exp(-lambda_e*50)) is neglected
// Maximum Permissible Concentration(MPC) for a 7 day or 168 hour week tritium dose 
MPC_w_168 = (lambda_b*M*MPD)/(51.1*V_W*zeta*q);
printf("\n Maximum Permissible Concentration(MPC) for a 7 day or 168 hour week tritium dose for occupational purpose = %.2f uCi/cm^3 \n",MPC_w_168);
// The exposure at work is doubled for 40 hour week as compared to 168 hour week 
// For 40 hour week, with work of 5 days out of 7 day week according to a study
MPC_w_40 = MPC_w_168*2*(7/5);
printf("\n Maximum Permissible Concentration(MPC) for a 40 hour week tritium dose for occupational purpose = %.3f uCi/cm^3 \n",MPC_w_40);

// By analyzing the data of Table 9.13
// The whole body dose of general public is one tenth of the occupational purpose.
MPC_w_168_gp = MPC_w_168*0.1;
printf("\n Maximum Permissible Concentration(MPC) for a 7 day or 168 hour week tritium dose for general public = %.3f uCi/cm^3 \n",MPC_w_168_gp);
// The answer of Maximum Permissible Concentration(MPC) for a 168 hour week tritium dose for general public is given wrong in the textbook.

