// Example 4.6
clear all;
clc;

// Given data
A_U = 238;              // Atomic Mass number of Uranium
A_O = 16;               // Atomic Mass number of Oxygen
amt_UO2 = 33000;        // Amount of Uranium dioxide (UO2) present in kilogram(kg)
x_P = 0.032;            // Enrichment of 3.2 w/o uranium product
x_T = 0.002;            // Enrichemnt of 0.2 w/o residual tails
// From Figure 4.45
x_F = 0.00711;          // Enrichemnt of 0.711 w/o feed

// 1.
// Estimation of enriched uranium in kg
M_P = A_U*amt_UO2/(A_U+2*A_O);
// Estimation of amount of Uranium feed in kg
M_F = ((x_P-x_T)/(x_F-x_T))*M_P;
// Result
printf(" \n The amount of uranium feed required per reload = %d kg \n",ceil(M_F));

// 2.
V_x_P = (1-2*x_P)*log((1-x_P)/x_P);         // Value function of uranium product with enrichemnt of 3.2 w/o
V_x_F = (1-2*x_F)*log((1-x_F)/x_F);         // Value function of feed with enrichemnt of 0.711 w/o
V_x_T = (1-2*x_T)*log((1-x_T)/x_T);         // Value function of tallings with enrichemnt of 0.2 w/o
rate_SWU = 130.75;                          // Enrichment cost in dollars per SWU
// Calculation 
SWU = M_P*(V_x_P-V_x_T)-M_F*(V_x_F-V_x_T);  // Separative Work (SWU) in kg
enrich_cost = ceil(SWU)*rate_SWU;           // Enrichment cost in dollars
// Result
printf("\n The enrichment cost = $ %d \n",ceil(enrich_cost));
// Due to approximation of Separative Work Unit(SWU), there is a difference in the value of enrichment cost on comparison with the textbook value.

