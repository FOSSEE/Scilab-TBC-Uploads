clc 
// Given that
v = 1.8e8 // velocity of space ship away from the earth in m/sec
v1 = 2.1e8 // velocity of rocket w.r.t. space ship away from the earth in first case in m/sec
v2 = -2.1e8 // velocity of rocket w.r.t. space ship away from the earth in second case in m/sec
// Sample Problem 24 on page no. 11.27
printf("\n # PROBLEM 24 # \n")
printf(" Standard formula used \n")
printf(" u_x = u_x_ + v / (1+ v*u_x_/c^2) \n ")
u1 = (v1 + v) / (1 + ((v1 * v) / (3e8)^2))
u2 = (v2 + v) / (1 + ((v2 * v) / (3e8)^2))
printf("\n Velocity of rocket w.r.t. earth in first case = %f c away from the earth.\n Velocity of rocket w.r.t. earth in second case = %f c away from the earth ",u1/3e8,u2/3e8)
