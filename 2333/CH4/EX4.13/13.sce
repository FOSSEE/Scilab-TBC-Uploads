clc 
// Given that
I = 1 // Initial intensity after polarization 
I_theta = I - I/4 // Initial intensity after polarization on rotation
// Sample Problem 13 on page no. 217
printf("\n # PROBLEM 13 # \n")
theta = acos(sqrt(I_theta/I))*180/%pi // Angle of rotation
printf("Standard formula used \n I = A^2*cos^2(theata)\n")
printf("\n Angle of rotation required is %d degree.",ceil(theta))

