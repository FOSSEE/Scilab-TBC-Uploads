
clc 
// Given that
x = 1 // intercepts cut by the plane along vector a of crystallographic axes
y = 2 // intercepts cut by the plane along vector b of crystallographic axes
k = 0 // raciprocal of intercepts cut by the plane along vector c of crystallographic axes
a = 5 // length of vector a of crystallographic axes in angstrom
b = 5 // length of vector b of crystallographic axes in angstrom 
c = 5 // length of vector c of crystallographic axes in angstrom
// Sample Problem 5 on page no. 13.26
printf("\n # PROBLEM 5 # \n")
printf("Standard formula used \n")
printf(" d = 1 / (x1^2 + y1^2 + z1^2)^1/2 \n")
x_ = 2 / x
y_ = 2 / y
z_ = 2 * k
d = a / sqrt(x_^2 + y_^2 + z_^2)
D=d^2
printf("\n Miller indices of the plane are (%d %d %d).\n Inter planar distance is sqrt(%d) angstrom.",x_,y_,z_,D)
                                                               
