clc 
// Given that
x1 = 3 // intercepts cut by the plane along vector a of crystallographic axes in first case
y1 = 3 // intercepts cut by the plane along vector b of crystallographic axes in first case 
z1 = 2 // intercepts cut by the plane along vector c of crystallographic axes in first case
x2 = 1 // intercepts cut by the plane along vector a of crystallographic axes in second case
y2 = 2 // intercepts cut by the plane along vector b of crystallographic axes in second case
k2 = 0 // raciprocal of intercepts cut by the plane along vector c of crystallographic axes in second case
x3 = 1 // intercepts cut by the plane along vector a of crystallographic axes in third case
y3 = 1/2 // intercepts cut by the plane along vector b of crystallographic axes in third case
z3 = 1 // intercepts cut by the plane along vector c of crystallographic axes in third case
// Sample Problem 3 on page no. 13.24
printf("\n # PROBLEM 3 # \n")
printf("Standard formula used \n")
printf(" x_ = a / x \n y_ = b / y \n z_ = c / z \n")
x_1 = 6 / x1
y_1 = 6 / y1
z_1 = 6 / z1
x_2 = 2 / x2
y_2 = 2 / y2
z_2 = 2*k2
x_3 = 1 / x3
y_3 = 1 / y3
z_3 = 1 / z3
printf("\n Miller indices of the plane (i) In first case are (%d %d %d),(ii) In second case are (%d %d %d),(iii)In the third case  are (%d %d %d).",x_1,y_1,z_1,x_2,y_2,z_2,x_3,y_3,z_3)
                                                               
