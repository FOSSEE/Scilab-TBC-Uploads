clear;
clc;

// Example: 12.15
// Page: 498

printf("Example: 12.15 - Page: 498\n\n");

// Solution

//*****Data******//
// Reaction: CH3COOH(l) + C2H5OH(l) --------> CH3COOC2H5(l) + H2O(l)
T = 373.15;// [K]
nCH3COOH_feed = 1;
nC2H5OH_feed = 1;
deltaHf_CH3COOH = -484.5;// [kJ]
deltaHf_C2H5OH = -277.69;// [kJ]
deltaHf_CH3COOC2H5 = -480;// [kJ]
deltaHf_H2O = -285.83;// [kJ]
deltaGf_CH3COOH = -389.9;// [kJ]
deltaGf_C2H5OH = -174.78;// [kJ]
deltaGf_CH3COOC2H5 = -332.2;// [kJ]
deltaGf_H2O = -237.13;// [kJ]
R = 8.314;// [J/mol K]
//******************//

deltaH_298 = deltaHf_CH3COOC2H5 + deltaHf_H2O - deltaHf_CH3COOH - deltaHf_C2H5OH;// [kJ]
deltaG_298 = deltaGf_CH3COOC2H5 + deltaGf_H2O - deltaGf_CH3COOH - deltaGf_C2H5OH;// [kJ]
T0 = 298;// [K]
K_298 = exp(-(deltaG_298*1000/(R*T0)));
K_373 = K_298*exp((deltaH_298*1000/R)*((1/T0) - (1/T)));
// Let e be the degree of completion at equilibrium.
// nCH3COOH_eqb = 1 - e;
// nC2H5OH_eqb = 1 - e;
// nCH3COOC2H5_eqb = e;
// nH2O_eqb = e;
// Total moles at equilibrium = 1 - e + 1 - e + e + e = 2
// Mole fractions:
// ySO2_eqb = (1 - e)/2
// yO2_eqb = (1 - e)/2
// ySO3_eqb = e/2
// yAr_eqb = e/2
// Sum of Stoichiometric Coeffecient:
v = 1 + 1 - 1 - 1;
deff('[y] = f(e)','y = K_373 - ((e/2)*(e/2))/(((1 - e)/2)*((1 - e)/2))');
e = fsolve(0.5,f);
printf("Mole fraction of ethyl acetate is %.3f",e/2);