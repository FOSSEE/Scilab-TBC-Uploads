clc 
// Given that
i1 = 1 / 2 // reduced intensity ratio in first case
i2 = 1 / 4 // reduced intensity ratio in second case
// Sample Problem 11 on page no. 3.27
printf("\n # PROBLEM 11 # \n")
theta1 = acos(sqrt(i1)) * (180 / %pi)// calculation for angle between nicols in first case 
theta2 = acos(sqrt(i2)) * (180 / %pi)// calculation for angle between nicols in second case
printf("Standard formula used \n I=I_cos(theta)^2\n")
printf("\n Angle between the Nicols in first case = %f degree\n And in second case = %f degree",theta1,theta2)
