clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.1
// Page 60
printf("Example 3.1, Page 60 \n \n");

// solution

m = 1 //[kg] feed water
m1 = 1200 //[mg] dissolved solids in 1 kg feed water
m2 = 3500 //[mg] max dissolved solid content 
x = (m*m1)/m2 // [kg] blown down water
printf("Percentage of feed water to be blown down is "+string(x)+".")
