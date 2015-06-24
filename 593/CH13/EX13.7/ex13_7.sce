clear;
//clc();

// Example 13.7
// Page: 362
printf("Example-13.7  Page no.-362\n\n");

//***Data***//
T = 298.15;//[K] Temperature
F = 96500;//[(coulomb)/(mole*electrons)] faraday constant

// The reaction is given as
// Al2O3 + 1.5C = 2Al + 1.5CO2

// No of the electron being exchanged are 
n_e = 6;//[electron]
// All the reactants and products enter or leave the reactor as pure species in their standard states, so
// delta_g_0 = delta_g_1 and E = E_0
// Free energy of the species in the above equation as reported in the Table A.8 in the book is 
g_0_CO2 = -394.4*1000;//[J/mol] 
g_0_Al = 0;//[J/mol]
g_0_C = 0;//[J/mol]
g_0_Al2O3 = -1582.3*1000;//[J/mol]

// Free energy change of the reaction is 
delta_g_0 = 1.5*g_0_CO2 + 2*g_0_Al - 1.5*g_0_C - g_0_Al2O3;//[J/mol]

// So, standard state cell voltage is 
E_0 = (-delta_g_0)/(n_e*F);//[V]

printf("Standard state cell voltage for the production of aluminium is %f Volt",E_0);
