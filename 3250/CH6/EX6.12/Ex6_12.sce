clc
// Given that
V = 150e3 // Acceleration voltage in V
// Sample Problem 12 on page no. 392
printf("\n # PROBLEM 6.12 # \n")
D = 76e-7 // Density of steel in kg/mm^3
Delta = 2.6*(10^-17)*((V^2)/D)
printf("\n Electron range = %d micro meter",ceil(Delta*(10^3)))
