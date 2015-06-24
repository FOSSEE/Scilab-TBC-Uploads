clc 
// Given that
x1 = 2 // coordinate on x axis 
y1 = 3 // coordinate on y axis 
z1 = 1 // coordinate on z axis 
r = 0.175 // atomic radius of fcc structure in nm
// Sample Problem 7 on page no. 13.27
printf("\n # PROBLEM 7 # \n")
printf("Standard formula used \n")
printf(" d = 1 / (x1^2 + y1^2 + z1^2)^1/2 \n")
a = (4 * r) / sqrt(2)
d = a / sqrt(x1^2 + y1^2 + z1^2)
printf("\n Inter planar spacing is %f nm.",d)
                                                               
