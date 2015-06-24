clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.17
// Page 242
printf("Example 5.17, Page 242 \n \n");

// solution

// basis 100 kg of tin
T1 = 303.15
T2 = 505.15
n = 100/118.7  // kmol
// Q1 = n*[intgr from T1 to T2 (Cms dT)]
Q1 = 4973.3 // kJ
lf = 7201
Q2 = n*lf  // kJ
Q = Q1+Q2
lv = 278 // kJ/kg
vp = Q/lv // kg
printf(" Quantity of eutectic mixture condensed = "+string(vp)+" kg per 100 kg of tin melted at its melting point.")
