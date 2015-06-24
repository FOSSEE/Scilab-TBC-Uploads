clc 
// Given that
c = 3e8 // velocity of photon in meter/sec
// Sample Problem 36 on page no. 11.32
printf("\n # PROBLEM 36 # \n")
printf(" Standard formula used \n")
printf(" u_x = u_x_ + v / (1+ v*u_x_/c^2) \n ")
u = (c + c) / ( 1 + (c / 3e8)^2)
printf("\n Relative velocity of photons is %e meter/sec.",u)
