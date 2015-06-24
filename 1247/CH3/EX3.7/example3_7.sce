clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.7
// Page 64
printf("Example 3.7, Page 64 \n \n");

// solution

m = 100 //[kg] SO3 free mixed acid (basis)
m1 = 55 //[kg] HNO3
m2 = 45 //[kg] H2SO4
// SO3 + H2O --> H2SO4
m3 = (80/18)*3 //[kg] SO3 equivalent to 3 kg of water
Q = m2+m3 //[kg] oleum to be mixed
S = (m3/Q)*100 // strength of oleum
R = m1/Q 
printf("Strength of Oleum required is "+string(S)+" \nHNO3 and Oleum are required to be mixed in the proportion of "+string(R)+":1.")
