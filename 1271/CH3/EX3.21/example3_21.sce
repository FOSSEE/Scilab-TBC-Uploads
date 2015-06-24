clc 
// Given that
theta = 26.4 // rotation of plane of polarization in degree
c = 0.2 // concentration of sugar solution in gm/cc
l = 2 // length of polarizing tube in decimeter
// Sample Problem 21 on page no. 3.29
printf("\n # PROBLEM 21 # \n")
s = theta / (l * c)// calculation for specific rotation of sugar solution
printf("Standard formula used \n s = (10*theta)/(l*c)\n")
printf("\n Specific rotation of sugar solution = %f degree/(dm-cc)",s)
