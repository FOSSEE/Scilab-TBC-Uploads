clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.23
// Page 253
printf("Example 5.23, Page 253 \n \n");

// solution

// basis feed gas = 12000 Nm^3 = 535.4 kmol/h
T1 = 147.65  // K
n1 = 535.4*.3156  // kmol/h  HP tail gas stream
T = 118.5 // K
n2 = (535.4-n1)*.0602 // kmol/h    LP tail stream
n3 = 535.4-n2-n1 // kmol/h  product H2 stream
p = 315.35*100/n3
printf(" Purity of product H2 stream = "+string(p)+" percent.")
