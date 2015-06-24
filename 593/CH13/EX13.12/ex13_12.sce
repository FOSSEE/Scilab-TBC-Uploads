clear;
//clc();

// Example 13.12
// Page: 367
printf("Example-13.12  Page no.-367\n\n");

//***Data***//
// Getting the data from the example 13.10
T = 273.15+25;//[K] Temperature
P = 11.38/760;//[atm] Pressure
R = 0.08206;//[(L*atm)/(mol*K)] Gas constant
v = 0.6525/0.04346;//[L/g] Specific volume 

// Now from the previous example ie example 13.11 the mole fractions of the monomer and dimer in the gas phase is 
y_HAc = 0.211;// monomer 
y_HAc_2 = 0.789;// dimer

// Molecular weights of the monomer and dimer forms are
M_HAc = 60.05;//[g/mol] monomer 
M_HAc_2 = 120.10;//[g/mol] dimer

// Now average molecular weight of the mixture is
M_avg = M_HAc*y_HAc + M_HAc_2*y_HAc_2;//[g/mol]

// So specific volume in [L/mol] is
V = v*M_avg;//[L/mol]

// Now compressibility factor is
z = (P*V)/(R*T);

printf("The compressibility factor z for the gaseous mixture is %f",z);
