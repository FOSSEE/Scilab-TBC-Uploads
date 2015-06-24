clc 
// Given that
F = 4e-6 // Maximum feature dimension in meter
t = 5e-6 // Photorist thickness in meter
g = 25e-6 // Allowable gap between the mask and the resist meter
// Sample Problem 1 on page no. 432
printf("\n # PROBLEM 7.1 # \n")
lambda = (F^2)/(t+g)
printf("\n Maximum allowable wavelength of the exposing light = %d nm",lambda*(10^9))

