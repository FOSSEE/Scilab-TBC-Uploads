clc 
// Given that
x = 2 // intercepts cut by the plane along vector a of crystallographic axes
y = 2 / 3 // intercepts cut by the plane along vector b of crystallographic axes
k = 0 // raciprocal of intercepts cut by the plane along vector c of crystallographic axes
// Sample Problem 6 on page no. 13.26
printf("\n # PROBLEM 6 # \n")
printf("Standard formula used \n")
printf(" x_ = a / x \n y_ = b / y \n z_ = c / z \n")
x_ = 2 / x
y_ = 2 / y
z_ = 2 * k
printf("\n Miller indices of the plane are (%d %d %d)",x_,y_,z_)
                                                               
