clc 
// Given that
V = 2.500e3 // voltage across the electrode in V
E = 3.6e4 // strength of electric field in V/m
B = 1.2e-3 // magnetic field in tesla
// Sample Problem 5 on page no. 6.22
printf("\n # PROBLEM 5 # \n")
r = (E / B)^2 / (2 * V)//calculation for ratio of the charge on an electron to the mass of an electron
printf("\n Standard formula used \n e/m=(E/B)^2 / (2V). \n")
printf("\n Ratio of the charge on an electron to the mass of an electron = %e C/kg.",r)
