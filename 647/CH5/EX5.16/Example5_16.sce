clear;
clc;

// Example: 5.16
// Page: 169

printf("Example: 5.16 - Page: 169\n\n");

// Solution

//*****Data*****//
m = 12;// [g]
T1 = 294;// [K]
T2 = 574;// [K]
T = 505;// [melting point, K]
H_fusion = 4.5;// [cal/K]
C_solid = 0.052;// [cal/g K]
C_liquid = 0.062;// [cal/g K]
//*************//

// Entropy Change in heating 12 g of metal from T1 to T
deltaS1 = m*C_solid*integrate('(1/T)','T',T1,T);// [kJ/K]
// Entropy Change in fusion of metal:
deltaS2 = m*H_fusion/T;// [kJ/K]
// Entropy Change in heating liquid metal from 505 K to 574 K
deltaS3 =  m*C_liquid*integrate('(1/T)','T',T,T2);// [kJ/K]
deltaS = deltaS1 + deltaS2 + deltaS3;// [kJ/K]
printf("Change in Entropy is %.3f kJ/K",deltaS);