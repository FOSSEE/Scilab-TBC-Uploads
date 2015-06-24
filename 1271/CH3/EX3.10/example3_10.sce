clc 
// Given that
theta1 = %pi / 6 // angle between Nicole prisms in first case in radian
theta2 = %pi / 4 // angle between Nicole prisms in second case in radian
theta3 = %pi / 3 // angle between Nicole prisms in third case in radian
theta4 = %pi / 2 // angle between Nicole prisms in fourth case in radian
// Sample Problem 10 on page no. 3.26
printf("\n # PROBLEM 10 # \n")
I1 = (1 - (cos(theta1))^2) * 100
I2 = (1 - (cos(theta2))^2) * 100
I3 = (1 - (cos(theta3))^2) * 100
I4 = (1 - (cos(theta4))^2) * 100
 // calculation for percentage reduction in intensity of ligth
 printf("\n Standard formula used \n I = (1 - (cos(theta))^2) * 100. \n")
printf("\n Percentage reduction in intensity of ligth-\n(i)%f per\n(ii)%f per\n(iii)%f per\n(iv)%f per",I1,I2,I3,I4)
