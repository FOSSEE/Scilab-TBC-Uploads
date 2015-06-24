// Example 3.15
clear all;
clc;

// Given data
rho = 10;                               // Density of UO2 in g/cm^3
mol_wt_UO2 = 238+(16*2);                // Molecular weight of UO2
per_U   =  (238/mol_wt_UO2)*100;        // Percent by weight of Uranium
per_O = 100-per_U;                      // Percent by weight of Oxygen

// Calculation 
//Using the data given in Table II.4 for uranium and oxygen
mup_U = 0.0757;                         // Ratio of mass attenuation coefficient to density of uranium in cm^2/g
mup_O = 0.0636;                         // Ratio of mass attenuation coefficient to density of oxygen in cm^2/g
mup = (per_U/100*mup_U)+(per_O/100*mup_O);    // The total ratio of mass attenuation coefficient in cm^2/g
mu = mup*rho;
// Calculation 
lambda = 1/mu;
// Result
printf('\n Mass attenuation coefficient of Uranium dioxide (UO2) = %5.3f cm^(-1) \n',mu);
printf('\n Mean free path = %3.2f cm \n',lambda);
// The answer is marked wrongly in the textbook. But the solution is correctly evaluated.
