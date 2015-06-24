clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.27
// Page 44
printf("Example 2.27, Page 44 \n \n");

// solution

P = 5.7+1.01 //[bar] absolute total P
// using Roult's law
vp = 3.293*.7737 //[kPa] vap P of furfural
// using Dalton's law of partial P
n1 = vp/(P*100) // mol fraction of furfural
n2 = 1-n1 // mol fraction of 1 -butene
printf("mol fraction of Furfural is "+string(n1)+"\nmol fraction of 1-Butene is "+string(n2)+".")
