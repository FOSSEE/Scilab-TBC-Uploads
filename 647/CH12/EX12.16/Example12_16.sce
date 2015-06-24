clear;
clc;

// Example: 12.16
// Page: 501

printf("Example: 12.16 - Page: 501\n\n");

// Solution

//*****Data******//
// Reaction: CaCO3(s) = CaO(s) + CO2(g)
T = 1000;// [K]
deltaH_1000 = 1.7533*10^5;// [J]
deltaS_1000 = 150.3;// [J/mol K]
R = 8.314;// [J/mol K]
//****************//

deltaG_1000 = deltaH_1000 - T*deltaS_1000;// [J]
K_1000 = exp(-(deltaG_1000/(R*T)));// [bar]
P = K_1000;
printf("The decomposition pressure of limestone is %.4f bar at 1000 K",P);