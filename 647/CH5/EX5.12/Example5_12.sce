clear;
clc;

// Example: 5.12
// Page: 167

printf("Example: 5.12 - Page: 167\n\n");

// Solution

//*****Data*****//
Vol_O2 = 5.6;// [L]
Vol_H2 = 16.8;// [L]
R = 1.987;// [cal/mol K]
//*************//

xA = Vol_O2/22.4;// [mole fraction O2]
xB = Vol_H2/22.4;// [mle fraaction H2]
N = xA + xB;// [total number of moles]
// From Eqn. 5.21:
deltaS = - (N*R*(xA*log(xA) + xB*log(xB)));// [cal/K]
printf("Change in Entropy is %.3f cal/K",deltaS);