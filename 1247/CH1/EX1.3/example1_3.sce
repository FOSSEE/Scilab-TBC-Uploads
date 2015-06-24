clear;
clc;

// Stoichiometry
// Chapter 1
// Dimensions and Units


// Example 1.3
// Page 13
printf("Example 1.3, Page 13 \n \n");

// solution

m = 2000 // [lb] (mass flow rate)
t = 24 //[hr]
lf = 144 // [Btu/lb] (latent heat of fusion)
// Using conversion factors from table 1.3 (Pg 9)
TR = (m*lf*.251996*4.184)/(3600*24)
printf("1 TR = "+string(TR)+" kW")
