clear;
//clc();

// Example 13.10
// Page: 365
printf("Example-13.10  Page no.-365\n\n");

//***Data***//
T = 273.15+25;//[K] Temperature
P = 11.38/760;//[atm] Pressure
R = 0.08206;//[(L*atm)/(mol*K)] Gas constant
v = 0.6525/0.04346;//[L/g] Specific volume 
M = 60.05;//[g/mol] Molecular weight of HAc in the monomer form
// So the specific volume in [L/mol] is
V = v*M;//[L/mol]

// Compressibility factor is give by
z = (P*V)/(R*T);

printf("The value of the compressibility factor for HAc at given condition is %f",z); 