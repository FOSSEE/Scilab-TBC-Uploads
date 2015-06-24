clc 
// Given that
theta = 6.5 // rotation of plane of polarization in degree
c = 0.05 // concentration of sugar solution in gm/cc
l = 2 // length of polarizing tube in decimeter
// Sample Problem 22 on page no. 3.29
printf("\n # PROBLEM 22 # \n")
s = theta / (l * c) // calculation for specific rotation of sugar solution
printf("\n Standard formula used \n s = theta / (l * c). \n ")
printf("\n Specific rotation of sugar solution = %f degree/(dm-cc)",s)
