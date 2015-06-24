clc 
// Given that
E = 2.02 // average energy required to produce a Schottky defect at room temperature in eV
k = 1.38e-23 // Boltzmann constant in J/k
T = 300 // room temperature in K
// Sample Problem 23 on page no. 13.33
printf("\n # PROBLEM 23 # \n")
printf(" Standard formula used \n")
printf(" r = exp(-(E * 1.6e-19) / (2 * k * T))\n")
r = exp(-(E * 1.6e-19) / (2 * k * T))
printf("\n Ratio of number of Schottky defects to total number of cation-anion pairs is %e .",r)
                                                               
