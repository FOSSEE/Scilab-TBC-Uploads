clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.16
// Page 78
printf("Example 3.16 Page 78 \n \n");

// solution

// screen 1
// feed = N kg
// Oversize particle = NE1 kg
// Undersize particle = N-NE1

//screen 2
//feed = NE1+X kg
// Oversize particle = (NE1+X)*E2 kg
// Undersize particle = (NE1+X)(1-E2) kg


//screen 3
// feed = (NE1+X)*E2 kg
// Oversize particle = (NE1+X)*E2*E3 kg
// Undersize particle = (NE1+X)*E2*(1-E3) kg
printf("Overall Efficiency = (E1 E2 E3)*100/[(1-E1)(1-E2)+E2 E3].")
