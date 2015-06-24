clear;
clc;
// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 1
// Introduction


// Example 1.1 
// Page 5
// Given that the viscosity of water at 100 degree Celsius is 28.8 * 10^-6 kgf s/m^2 in MKS system , express this value in SI system.
printf("Example 1.1, Page 5 \n \n")

// Solution:

//at 100 degree Celsius
v1=28.8 * 10^-6; // [kgf s/m^2] 
v2=28.8 * 10^-6 * 9.8; // [N s/m^2]
printf("Viscosity of water at 100 degree celsius in the SI system is %e N.s/m^-2 (or kg/m s)",v2)