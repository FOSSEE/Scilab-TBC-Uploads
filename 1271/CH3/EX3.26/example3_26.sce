clc 
// Given that
theta = 13 // rotation of plane of polarization in degree
r = (1 / 3) // ratio of the final concentration to the initial solution
l = 2 // length of Polari meter in decimeter
l_ = 3 // length of second polarizing tube in decimeter 
// Sample Problem 26 on page no. 3.30
printf("\n # PROBLEM 26 # \n")
theta_ = (l_ * r * theta) / l// calculation for optical rotation of diluted solution
printf("Standard formula used \n s=theta/(l*c)\n")
printf("\nOptical rotation of diluted solution = %f degree",theta_)
