clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.2
// Page 436
printf("Example 7.2, Page 436 \n \n");

// solution

// basis 1 kg crude oil
H2 = .125 // kg   burnt
H2O = H2*18/2
Lh = H2O*2442.5 //kJ
GCV = 45071
NCV = GCV-Lh  //kJ/kg oil
printf("NCV = "+string(NCV)+" kJ/kg.")
