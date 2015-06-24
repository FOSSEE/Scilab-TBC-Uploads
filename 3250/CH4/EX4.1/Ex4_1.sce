clc 
// Given that
alpha = 10 // Rake angle in Degree
t = 0.4 // Chip thickness  in mm
T = 0.15 // Uncut chip thickness in mm
// Sample Problem 1 on page no. 187
printf("\n # PROBLEM 4.1 # \n")
r = T/t
phi = atand((r*cosd(alpha))/(1-r*sind(alpha)))
gama = cotd(phi) + tand(phi-alpha)
printf("\n Shear plane angle = %f°, \n Magnitude of the shear strain = %f",phi,gama)
