clc 
// Given that
v1 = 2.7e8 // velocity of first electron beam in meter/sec
v2 = -2.7e8 // velocity of second electron beam in meter/sec
// Sample Problem 35 on page no. 11.31
printf("\n # PROBLEM 35 # \n")
printf(" Standard formula used \n")
printf(" u_x = u_x_ + v / (1+ v*u_x_/c^2) \n ")
u = v1 - v2
u_ = (v1 - v2) / (1 - (v1 * v2) / (3e8)^2)
printf("\n Velocity of electrons beam w.r.t. another electron beam according to Newtonian mechanics is %f c.\n Velocity of electrons beam measured by the observer moving with other electron beam = %f c.",u/3e8,u_/3e8)
