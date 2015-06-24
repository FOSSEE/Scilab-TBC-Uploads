// Example 9.12
clear all;
clc;

// Given data
no_home = 10^6;                               // Number of houses
no_resident = 4;                              // Number of residents in a home
total_time = 50;                              // Number of years the analysis is carried out
radon_concn_old = 1;                          // Radon concentration in older uninsulated homes in terms of pCi/l
radon_concn_new = 6;                          // Radon concentration in modern insulated homes in terms of pCi/l
time = 3500;                                  // Time spent in home by a person per year in hours
eq_concn = 0.5;                               // Equilibrium concentration of 50% 
// 1 year = 24*365 hours
X_increased = eq_concn*(radon_concn_new-radon_concn_old)*(time/(24*365));   // The increased exposure of radon per person

// Using the data of Radon risk assessment of United States of America
// There are nearly 100 cases of cancer per 10^6 persons at 1 pCi-year dose.
// Calculation
no_cancer = (no_home*no_resident)*total_time*(100/10^6)*X_increased;
// Result
printf("\n Number of additional cases of cancer from insulation of home = %d \n",no_cancer);
// There is a slight deviation in the value given in the textbook. This is because of approximation of the number of additional cases of cancer in the textbook.
