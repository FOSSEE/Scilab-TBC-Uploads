clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.61
// Page 321
printf("Example 5.61, Page 321 \n \n");

// solution

// basis 100 kg of original acid
lv = 333.7  // kJ/kg
H = -lv-18*4.1868
HE = (-64277-H*312.63)/100  // kJ/kg
printf(" Heat of dilution = "+string(HE)+" kJ/kg.")
