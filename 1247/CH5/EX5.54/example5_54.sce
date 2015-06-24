clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.54
// Page 311
printf("Example 5.54, Page 311 \n \n");

// solution

// from ref 24
H = 1600.83
To = 273.15
h = 200
Hf1 = -79.3  // table 5.59
Hf2 = -46.11
Hsol = Hf1-Hf2
Hg = Hsol*1000*140/17.0305
Raq = 140/.15  // kg/h
dT = Hg/(4.145*Raq)
T = -dT+303
printf(" Temp of resultant sol = "+string(T)+" K.")
