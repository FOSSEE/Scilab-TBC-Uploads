clc 
// Given that
theta = 26.4 // rotation of plane of polarization in degree
c = 0.2 // Concentration of sugar solution in g/cm^3
l = 2 // length of Polari meter in decimeter
// Sample Problem 21 on page no. 221
printf("\n # PROBLEM 21 # \n")
s = theta/(c*l) // Specific rotation of sugar solution 
printf("\n Standard formula used \n c = theta / (s * l). \n")
printf("\n Specific rotation of sugar solution is %d percent.",ceil(s))
