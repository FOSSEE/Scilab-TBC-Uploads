clc 
// Given that
theta_c =45 // Critical angle of light in a substance in degree
// Sample Problem 7 on page no. 215
printf("\n # PROBLEM 7 # \n")
mu = sin(theta_c*%pi/180)  // by Brewster's law
p = atan(mu)*180/%pi // Polarization angle of light in a substance in degree
printf("Standard formula used \n mu=tan(Ip)\n")
printf(" \n Polarization angle of material is %f degree.",p)

