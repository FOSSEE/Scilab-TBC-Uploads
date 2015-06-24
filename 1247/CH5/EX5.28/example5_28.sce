clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.28
// Page 261
printf("Example 5.28, Page 261 \n \n");

// solution

lv1 = 26694  // kj/kmol
Tc = 466.74
lv2 = lv1*((Tc-298.15)/(Tc-307.7))^.38/1000  // kJ/mol
Hf = -252    // kJ/mol
Hf1 = Hf-lv2  // kJ/kmol
printf("Heat of formation of liquid di ethyl ether = "+string(Hf1)+" kJ/mol.")
