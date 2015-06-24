clc 
// Given that
l = 100 // consider the length of the rod in meter
v = 2.4e8 // speed of rod in meter/sec
theta = %pi / 3 // direction of velocity of rod along its length in radian
// Sample Problem 27 on page no. 11.28
printf("\n # PROBLEM 27 # \n")
printf(" Standard formula used \n")
printf(" l = l_0/((1-v^2/c^2)^1/2)  \n l^2 = l_x^2 + l_y^2 \n")
Lx = l * cos(theta)
Ly = l * sin(theta)
L_x = Lx * sqrt(1 - (v / 3e8)^2)
L_y = Ly 
L = sqrt(L_x^2 + L_y^2)
p_l = ((l - L) / l) * 100 
printf("\n Percentage length contraction is %f percent.",p_l)
