clc 
// Given that
J = 2 // The threshold value of dose in kJ/cm^3
h = 300 // Height in micro meter
// Sample Problem 3 on page no. 448
printf("\n # PROBLEM 7.3 # \n")
J_o = J*(exp(0.1*sqrt(h)))
printf("\n The minimum level of exposure of the PMMA surface = %f kJ/cm^3",J_o)

