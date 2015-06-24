// Example 11.12
clear all;
clc;

// Given data
Qy_bar = 0.197;                             // Emission rate for one year in micro-curie/year
// Let (chi/Q_bar) = d which is called 'Dilution factor'
d = 6.29*10^(-16);                          // Dilution factor in year/cm^3
MPC_w = 6*10^(-5);                          // Maximum Permissible Concentration (MPC) of iron in micro-curie/cm^3

Cw = Qy_bar*d;                              // The concentration of Fe-59 
// For fish
Rs_fish = 110;                             // Consumption rate in g/day
// Using the data from Table 11.15 for saltwater concentration of fish for iron
CF_fish = 1800;                            // Concentration Factor of fish
Cs_fish = CF_fish*Cw;                       // Activity of fish
H_dot_fish = (Cs_fish*Rs_fish*500)/(MPC_w*2200);    // Dose rate for fish

// For mollusks
Rs_mollusk = 10;                           // Consumption rate in g/day
// Using the data from Table 11.15 for saltwater concentration of mollusk for iron
CF_mollusk = 7600;                         // Concentration Factor of mollusk
Cs_mollusk = CF_mollusk*Cw;                 // Activity of mollusk
H_dot_mollusk = (Cs_mollusk*Rs_mollusk*500)/(MPC_w*2200);   // Dose rate for mollusk

// For crustaceans
Rs_crustacean = 10;                        // Consumption rate in g/day
// Using the data from Table 11.15 for saltwater concentration of crustacean for iron
CF_crustacean = 2000;                      // Concentration Factor of crustacean
Cs_crustacean = CF_crustacean*Cw;           // Activity of crustacean
H_dot_crustacean = (Cs_crustacean*Rs_crustacean*500)/(MPC_w*2200);  // Dose rate for crustacean

// Calculation
H_dot = H_dot_fish+H_dot_mollusk+H_dot_crustacean;
// Result
printf(" \n The annual dose rate to GI tract by consuming fish = %.2E mrem/year",H_dot_fish);
printf(" \n The annual dose rate to GI tract by consuming mollusk = %.2E mrem/year",H_dot_mollusk);
printf(" \n The annual dose rate to GI tract by consuming crustaceans = %.2E mrem/year",H_dot_crustacean);
printf(" \n The annual dose rate to GI tract by consuming seafood = %.2E mrem/year \n",H_dot);
// The answer for annual dose rate to GI tract by consuming fish is wrong in the textbook. This is because the value of fish consumption rate is wrongly considered.
