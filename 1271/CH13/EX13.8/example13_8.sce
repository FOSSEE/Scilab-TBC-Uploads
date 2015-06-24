clc 
// Given that
x1 = 1 // coordinate on x axis in first case
y1 = 2 // coordinate on y axis in first case 
z1 = 3 // coordinate on z axis in first case
x2 = 1
y2 = 1
z2 = 0
// coordinate of first plane in second case
x3 = 1
y3= 1
z3 = 1
// coordinate of second plane in second case
// Sample Problem 8 on page no. 13.27
printf("\n # PROBLEM 8 # \n")
printf("Standard formula used \n")
printf(" d = 1 / (x1^2 + y1^2 + z1^2)^1/2 \n")
x_=6/x1
y_=6/y1
z_=6/z1
d1 = 1 / sqrt(x2^2 + y2^2 + z2^2)
d2= 1/ sqrt(x3^2 + y3^2 + z3^2)
d = d1/d2
printf("\n The ratio of intercepts of three axes by the point are %d : %d : %d. \n The ratio of  spacing between two planes is %f.",x_,y_,z_,d)
                                                               
