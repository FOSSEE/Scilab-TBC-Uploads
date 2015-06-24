clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.1
// Page 186
printf("Example 5.1, Page 186 \n \n");

// solution

// basis pumping of 1 l/s of water
Hadd = 52  // kW
Hlost = 21  // kW
fi = Hadd - Hlost  // kW
p1 = 101325  // Pa
p2 = p1
Z1 = -50  // m
Z2 = 10  // m
g = 9.80665  // m/s sq
gc = 1  // kg.m/(N.s sq)
row = 1  // kg/l
W = 1.5*.55  // kW
// energy balance b/w A and B
// dE = E2-E1 = W + Q + (Z1-Z2)*(g/gc)*qm
dE = 31.237 // kW
printf("Increase in internal energy between the storage tank and the bottom of the well = "+string(dE)+" kW.")
