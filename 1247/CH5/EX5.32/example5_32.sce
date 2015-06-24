clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.32
// Page 269
printf("Example 5.32, Page 269 \n \n");

// solution

// basis 100 kg of 2% ammonia solution
NH3 = 2 // kg
H2O = 98 // kg
Hr = -361.2-(-45.94-285.83)  // kJ/mol NH3 dissolved
Hd = -(Hr*2*1000/17.0305)  // kJ/100 kg sol.
printf(" heat of reaction = "+string(Hd)+" kJ/100 kg solution.")
