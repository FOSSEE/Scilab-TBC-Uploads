clc 
// Given that
theta = 10 // rotation of plane of polarization in degree
s = 60 // specific rotation of sugar solution in degree per decimeter per unit concentration
l = 2.5 // length of Polari meter in decimeter
// Sample Problem 20 on page no. 3.29
printf("\n # PROBLEM 20 # \n")
c = theta / (s * l) // calculation for concentration of sugar solution
printf("\n Standard formula used \n c = theta / (s * l). \n")
printf("\n Concentration of sugar solution = %f gm/cc",c)
