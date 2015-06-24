clear;
clc;

// Stoichiometry
// Chapter 1
// Dimensions and Units


// Example 1.1
// Page 12
printf("Example 1.1, Page 12 \n \n");

// solution

// Using conversion factors from table 1.3 (Pg 9)
q1 = 75 // [gallon/min] (volumetric flow rate)
q2 = 75/(60*.219969) // [dm^3/s]
row = 0.8 // [kg/dm^3]
q3 = q2*row // [kg/s] (mass flow rate)
printf("mass flow rate = "+string(q3)+" [kg/s] \n")
