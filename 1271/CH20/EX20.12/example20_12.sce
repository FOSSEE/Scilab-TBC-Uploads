clc 
// Given that
lambda = 1e-11 // K-absorption limit for uranium in m
// Sample Problem 12 on page no. 20.10
printf("\n # PROBLEM 12 # \n")
printf("Standard formula used \n ")
printf("lambda_min = 12400/V \n")
V = 12400e-10 / lambda
printf("\n Excitation potential is %d kV.",V/10^3)
