clc 
// Given that
r1 = 1/3 // ratio of intensity of transmitted light to the intensity of transmitted beam in first case
r2 = 1/3 // ratio of intensity of transmitted light to the intensity of incident beam in second case
p = 50 // percentage reduction in intensity of unpolarized light by the sheet 
// Sample Problem 8 on page no. 3.25
printf("\n # PROBLEM 8 # \n")
theta1 = acosd(sqrt(r1)) // calculation for the angle between characteristics directions of the sheet in first case
theta2 = acosd(sqrt(2*r2)) // calculation for the angle between characteristics directions of the sheet in second case
printf("\n Standard formula used \n theta = acosd(sqrt(r)). \n")
printf("\n The angle between characteristics directions of the sheet in first case = %f degree. \n the angle between characteristics directions of the sheet in second case = %f degree.",theta1,theta2)
