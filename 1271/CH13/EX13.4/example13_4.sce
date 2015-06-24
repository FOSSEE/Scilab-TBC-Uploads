clc 
// Given that
x1 = 1 // coordinate on x axis for first plane
y1 = 0 // coordinate on y axis for first plane
z1 = 0 // coordinate on z axis for first plane
x2 = 1 // coordinate on x axis for second plane
y2 = 1 // coordinate on y axis for second plane
z2 = 1 // coordinate on z axis for second plane
// Sample Problem 4 on page no. 13.25
printf("\n # PROBLEM 4 # \n")
printf("Standard formula used \n")
printf(" d = 1 / (x1^2 + y1^2 + z1^2)^1/2 \n")
d1 = 1 / sqrt(x1^2 + y1^2 + z1^2)
d2 = 1 / sqrt(x2^2 + y2^2 + z2^2)
printf("\n Spacing between the plane in first case is a / %d.\n Spacing between the plane in second case is a / %f .",d1,d2)
                                                               
