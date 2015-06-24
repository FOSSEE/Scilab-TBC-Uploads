clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.17
// Page 26
printf("Example 2.17, Page 26 \n \n");

// solution

S = .68 // sulphur content by mass
d = .85 // kg/l
s = (S*d*10^6)/100 // [mg/l] or [ppm]
printf("Sulphur content in LDO is "+string(s)+" ppm.")
