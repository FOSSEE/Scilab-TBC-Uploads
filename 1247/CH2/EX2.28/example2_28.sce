clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.28
// Page 44
printf("Example 2.28, Page 44 \n \n");

// solution

P = 100 //[kPa] total P
Pw = 2.5326 //[kPa] V.P> of water at dew point
//absolute humity = mass of water vapour/ mass of dry air
H = (Pw/(P-Pw))*(18.0153/28.9697) // absolute humidity
printf("absolute humidity = "+string(H)+".")
