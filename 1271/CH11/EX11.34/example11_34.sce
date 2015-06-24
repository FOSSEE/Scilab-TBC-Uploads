clc 
// Given that
t = 2e-7 // life time of particle when it is moving in sec
v = 2.8e8 // speed of particle in meter/sec
// Sample Problem 34 on page no. 11.31
printf("\n # PROBLEM 34 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n")
T_ = t * sqrt(1 - (v / 3e8)^2)
printf("\n Proper life time of particle is %e sec.",T_)
