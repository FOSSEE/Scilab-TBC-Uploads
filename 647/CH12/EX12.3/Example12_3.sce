clear;
clc;

// Example: 12.3
// Page: 479

printf("Example: 12.3 - Page: 479\n\n");

// Solution

//*****Data******//
// Reaction: C2H5OH(g) + (1/2)O2(g) = CH3CHO(g) + H2O(g)
Temp = 298;// [K]
G_CH3CHO = -133.978;// [kJ]
G_H2O = -228.60;// [kJ]
G_C2H5OH = -174.883;// [kJ]
R = 8.314;// [J/mol K]
//***************//

G_O2 = 0;// [kJ]
G_rkn = G_CH3CHO + G_H2O -(G_C2H5OH + G_O2);// [kJ]
G_rkn = G_rkn*1000;// [J]
if G_rkn < 0 
    printf("Reaction is feasible\n");
    K = exp(-(G_rkn/(R*Temp)));
    printf("Equilibium Constant is %.3e",K);
else
    printf("Reaction is not feasible\n");
end