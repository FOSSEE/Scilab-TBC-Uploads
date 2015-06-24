// Scilab Code Ex9.7: Page-9.27 ; (2004)
clc;clear;
Na = 5e+23; // Concentration of boron atoms, per metrecube
Nd = 3e+23; // Concentration of arsenic atoms, per metrecube
p = Na-Nd;  // Hole concentration, per metrecube
ni = 2e+16; //  Intrinsic concentration ,per metrecube
n = ni^2/p; //  Electron concentration, per metrecube

printf("\nHole concentration = %3.1e per metrecube ", p);
printf("\nElectron concentration = %3.1e per metrecube ", n);

//Results
//  Hole concentration = 2.0e+23 per metrecube 
//  Electron concentration = 2.0e+09 per metrecube 
