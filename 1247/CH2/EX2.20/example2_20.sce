clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations

// Example 2.20

// Page 27
printf("Example 2.20, Page 27 \n \n");

// solution

m1 = 100 //[kg] MEA solution (basis)
m2 = 20 //[kg] MEA
M1 = 61 // molar mass of MEA
n1 = m2/M1 // [kmol]
C = .206 
n2 = C*n1 //[kmol] dissolved CO2
m3 = n2*44 // [kg] mass of CO2
n3 = (m1-m2-m3)/18 //[kmol] water
n = (n2/(n1+n2+n3))*100
m = (m3/100)*100
printf("Mass percent of CO2 = "+string(m)+" and Mol percent = "+string(n)+".")
