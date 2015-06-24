clear;
clc;

// Example: 5.11
// Page: 166

printf("Example: 5.11 - Page: 166\n\n");

// Solution

//*****Data*****//
N = 1;// [kmol]
xA = 0.21;// [for Oxygen]
xB = 0.79;// [for Nitrogen]
R = 8.314;// [kJ/kmol K]
//*************//

deltaS = - (N*R*(xA*log(xA) + xB*log(xB)));// [kJ/mol K]
printf("Entropy Change is %.2f kJ/kmol K",deltaS);