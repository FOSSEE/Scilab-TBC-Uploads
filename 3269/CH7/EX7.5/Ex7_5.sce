// Example 7.5
clear all;
clc;

// Using the result of Example 7.3
reactivity = 0.001;
// As the reactor is fueled with Uranium-235 
bet = 0.0065;                  // Total delayed neutron fraction of all groups denoted by 'beta'
printf(" \n A dollar is worth 0.0065 in reactivity for Uranium-235 reactor. \n");
// Calculation
rho = reactivity/bet;
// Result
printf(" \n Reactivity = %4.3f dollars or %2.1f cents \n",rho,rho*100);
