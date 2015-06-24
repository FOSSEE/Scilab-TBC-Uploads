clc 
// Given that
l = 5 // length of the rod in meter
v = 1.8e8 // speed of rod in meter/sec
theta = %pi / 6 // direction of velocity of rod along its length in radian
// Sample Problem 29 on page no. 11.30
printf("\n # PROBLEM 29 # \n")
printf(" Standard formula used \n")
printf(" l = l_0/((1-v^2/c^2)^1/2)  \n l^2 = l_x^2 + l_y^2 \n")
Lx = l * cos(theta)
Ly = l * sin(theta)
L_x = Lx * sqrt(1 - (v / 3e8)^2)
L_y = Ly 
L = sqrt(L_x^2 + L_y^2)
orientation = atan(L_y / L_x) * (180 / %pi)
printf("\n Length of the rod in moving frame is %f meter.\n Orientation of the rod is %f degree.",L,orientation)
