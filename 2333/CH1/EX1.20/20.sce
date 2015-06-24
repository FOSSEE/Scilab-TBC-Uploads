clc 
// Given that
c = 3e8 // speed of light in m/s
u= -1*0.8*c // speed of particle A in m/s
v = 0.8*c // speed of particle B in m/s

// Sample Problem 20 on page no. 40
printf("\n # PROBLEM 20 # \n")
printf(" Standard formula used \n")
printf(" u_x = u_x_ + v / (1+ v*u_x_/c^2) \n ")
u1 = (u-v) / (1 - ((u * v) / (c)^2))
printf("\n Velocity of one particle relative to other is %e m/sec.",abs(u1))

