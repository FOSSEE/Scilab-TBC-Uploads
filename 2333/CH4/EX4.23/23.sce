clc 
// Given that
theta1 = 13 // rotation of plane of polarization in degree
c1 = 1 // let concentration of solution is unity
c2 = c1/3 // concentration of final solution 
l1 = 2 // length of Polari meter in decimeter in 1st case 
l2 = 3 // length of Polari meter in decimeter in 2nd case 
// Sample Problem 23 on page no. 221
printf("\n # PROBLEM 23 # \n")
s = theta1/(l1*c1) // Specific rotation of solution
theta2 = s*l2*c2 // // rotation of plane of polarization in degree
printf("\n Standard formula used \n c = theta / (s * l). \n")
printf("\n Rotation of plane of polarization is %f degree.",theta2)
