clc 
// Given that
theta = 11 // rotation of plane of polarization in degree
s = 66 // specific rotation of sugar solution in degree per decimeter per unit concentration
l = 2 // length of Polari meter in decimeter
// Sample Problem 24 on page no. 3.29
printf("\n # PROBLEM 24 # \n")
c = theta / (s * l) // calculation for concentration of sugar solution
printf("\n Standard formula used \n c = theta / (s * l). \n ")
printf("\n Concentration of sugar solution = %f gm/cc",c)
