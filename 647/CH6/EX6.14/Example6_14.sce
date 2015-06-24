clear;
clc;

// Example: 6.14
// Page: 221

printf("Example: 6.14 - Page: 221\n\n");

// Solution

// *****Data******//
alpha = 0.837*10^(-11);// [square m/N]
beeta = 54.2*10^(-6);// [1/K]
T = 227 + 273;// [K]
V = 7.115*10^(-3);// [cubic m/kmol]
Cp = 26.15;// [J/mol K]
//*****************//

Cv = Cp - (T*V*beeta^2/alpha)/1000;// [J/mol K]
// Percentage error if Cp is assumed to Cv.
err = ((Cp - Cv)/Cp)*100;
printf("Percentage error is %.2f %%",err);