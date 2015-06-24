// Example 9.4
clear all;
clc;
H = 1;                              // Equivalent dos in rem
n = 10^6;                           // Population
// Given data

// Using the data of number of expected deaths of leukemia per 10^6 people from Table 9.9
// In utero age group
frac_utero = 0.011;                 // Fraction of population
riskyr_utero = 10;                  // Risk years
riskcoef_utero = 15;                // Risk coefficient
// Number of deaths in utero is given by
deaths_utero = frac_utero*riskyr_utero*riskcoef_utero;

// In 0-0.99 age group
frac_0_099 = 0.014;                 // Fraction of population
riskyr_0_099 = 25;                  // Risk years
riskcoef_0_099 = 2;                 // Risk coefficient
// Number of deaths in 0-0.99 age group is given by
deaths_0_099 = frac_0_099*riskyr_0_099*riskcoef_0_099;

// In 1-10 age group
frac_1_10 = 0.146;                  // Fraction of population
riskyr_1_10 = 25;                   // Risk years
riskcoef_1_10 = 2;                  // Risk coefficient
// Number of deaths in 1-10 age group is given by
deaths_1_10=frac_1_10*riskyr_1_10*riskcoef_1_10;

// In 11-20 age group
frac_11_20 = 0.196;                 // Fraction of population
riskyr_11_20 = 25;                  // Risk years
riskcoef_11_20 = 1;                 // Risk coefficient
// Number of deaths in 11-20 age group is given by
deaths_11_20=frac_11_20*riskyr_11_20*riskcoef_11_20;

// In 21-30 age group
frac_21_30 = 0.164;                 // Fraction of population
riskyr_21_30 = 25;                  // Risk years
riskcoef_21_30 = 1;                 // Risk coefficient
// Number of deaths in 21-30 age group is given by
deaths_21_30=frac_21_30*riskyr_21_30*riskcoef_21_30;

// In 31-40 age group
frac_31_40 = 0.118;                 // Fraction of population
riskyr_31_40 = 25;                  // Risk years
riskcoef_31_40 = 1;                 // Risk coefficient
// Number of deaths in 31-40 age group is given by
deaths_31_40=frac_31_40*riskyr_31_40*riskcoef_31_40;

// In 41-50 age group
frac_41_50 = 0.109;                 // Fraction of population
riskyr_41_50 = 25;                  // Risk years
riskcoef_41_50 = 1;                 // Risk coefficient
// Number of deaths in 41-50 age group is given by
deaths_41_50 = frac_41_50*riskyr_41_50*riskcoef_41_50;

// In 51-60 age group
frac_51_60 = 0.104;                 // Fraction of population
riskyr_51_60 = 22.5;                // Risk years
riskcoef_51_60 = 1;                 // Risk coefficient
// Number of deaths in 51-50 age group is given by
deaths_51_60 = frac_51_60*riskyr_51_60*riskcoef_51_60;

// In 61-70 age group
frac_61_70 = 0.08;
riskyr_61_70 = 15.1;
riskcoef_61_70 = 1;                 // Risk coefficient
// Number of deaths in 61-70 age group is given by
deaths_61_70=frac_61_70*riskyr_61_70*riskcoef_61_70;

// In 71-80 age group
frac_71_80 = 0.044;                 // Fraction of population
riskyr_71_80 = 9.1;                 // Risk years
riskcoef_71_80 = 1;                 // Risk coefficient
// Number of deaths in 71-80 age group is given by
deaths_71_80 = frac_71_80*riskyr_71_80*riskcoef_71_80;

// Age greater than 80
frac_80 = 0.02;                     // Fraction of population
riskyr_80 = 4.5;                    // Risk years
riskcoef_80 = 1;                    // Risk coefficient
// Number of deaths with age greater than 80 years is given by
deaths_80=frac_80*riskyr_80*riskcoef_80;

// Calculation
total_deaths = deaths_utero+deaths_0_099+deaths_1_10+deaths_11_20+deaths_21_30+deaths_31_40+deaths_41_50+deaths_51_60+deaths_61_70+deaths_71_80+deaths_80;
// Result
printf(" \n Number of cases or deaths expected from leukemia = %.1f \n",total_deaths);




