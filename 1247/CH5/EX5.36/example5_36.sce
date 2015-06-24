clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.36
// Page 275
printf("Example 5.36, Page 275 \n \n");

// solution

// basis 100 kmol outgoing gas mixture from scrubber
moistin = 3127.7*.015/18  // kmol
waterin = 40.2+moistin  // kmol
// using tables 5.29 and 5.30
Hr = -27002658-(-26853359)
Hr1 = Hr/246.4493  // kJ/kmol total reactants
printf(" Heat of reaction = "+string(Hr1)+" kJ/kmol total reactants.")
