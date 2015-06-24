clc 
// Given that
w = 80 // weight of impure sugar in gm
theta = 9.9 // rotation of plane of polarization in degree
s = 66 // specific rotation of sugar solution in degree per decimeter per unit concentration
l = 2 // length of Polari meter in decimeter
// Sample Problem 23 on page no. 3.30
printf("\n # PROBLEM 23 # \n")
c = theta / (s * l) * (1000) // in gm/l
per_c = (c * 100) / w // calculation for concentration of sugar solution
printf("\n Standard formula used \n c = theta / (s * l) * (1000). \n per_c = (c * 100) / w. \n")
printf("\n Concentration of sugar solution = %f percent",per_c)
