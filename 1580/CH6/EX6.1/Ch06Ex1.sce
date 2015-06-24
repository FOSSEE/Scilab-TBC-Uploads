// Scilab Code Ex6.1 :  Page-6.8 (2004)
clc;clear;
M = 107.9;        // Molecular weight of silver, kg
d = 10.5e+03;    // Density of of silver, kg per metrecube
N = 6.023D+26;    // Avogadro's Number., atoms/k-mol
a = 6.8e+07;    // conductivity of silver, per ohm per sec
e = 1.6e-19;    //  charge of electron, C
n = d*N/M;  //  Density of electron
mu = a/(n*e);   // Mobility of electron
printf("\nDensity of electron = %4.2e ", n);
printf("\nMobility of electron = %5.3e metersquare per volt per sec", mu);

// Result 
// Density of electron = 5.86e+28 
// Mobility of electron = 7.251e-03 metersquare per volt per sec 
