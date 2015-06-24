clear;
clc;

// Stoichiometry
// Chapter 1
// Dimensions and Units


// Example 1.4
// Page 13
printf("Example 1.4, Page 13 \n \n");

// solution

// C = 89.2*A*(T/M^).5   [ft^3/s]
k = 89.2 //
C1 = 1 // [ft^3/s]
// Using conversion factors from table 1.3 (Pg 9)
C2 = 35.31467*C1
T1 = 1 //[dgree R]
T2 = 1.8*T1 // [K]
A1 = 1 // [ft^2]
A2 = 10.76391
k2 = (k*A2*(1.8)^.5)/35.34167
printf("eq in SI becomes \n C = "+string(k2)+"*(T/M)^.5  [m^3/s]")
