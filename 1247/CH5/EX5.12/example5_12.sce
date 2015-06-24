clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.12
// Page 227
printf("Example 5.12, Page 227 \n \n");

// solution

// using Appendix IV.2
Ps1 = 75
Ps2 = 80
T1 = 563.65
T2 = 568.12
T = 565.15 
Ps = 75*exp((T2*(T-T1)*log(80/75)/(T*(T2-T1))))
printf(" Saturation Pressure of steam at 565.15K is "+string(Ps)+" bar.")
