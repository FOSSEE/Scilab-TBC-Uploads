// Scilab Code Ex6.2 :  Page-6.9 (2004)
clc;clear;
M = 63.5;        // Molecular weight of copper, kg
d = 8.92e+03;    // Density of of copper, kg per metrecube
rho = 1.73e-8;    // Resistivity of copper, ohm m
m = 9.1e-31;    //  Mass of electron, kg
N = 6.023D+26;    // Avogadro's No., atoms/k-mol
e = 1.6e-19;    //  Charge of electron, C
n = d*N/M;  //  Density of electron
mu = 1/(rho*n*e);   // Mobility of electron
t = m/(n*(e^2)*rho);    // Average time of collision, sec
printf("\nNumber Density of electron = %4.2e ", n);
printf("\nMobility of electron = %3.3e meter per volt per sec", mu);
printf("\naverage time of collision = %3.2e sec", t);

// Result 
//  Number Density of electron = 8.46e+28 
//  Mobility of electron = 4.270e-03 meter per volt per sec
//  average time of collision = 2.429e-14 sec 
