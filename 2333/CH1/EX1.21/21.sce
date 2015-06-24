clc 
// Given that
c = 3e8 // speed of light in m/s
u= 0.25*c // speed of radioactive atom in m/sec
v = 0.9*c // speed of beta particle wrt to atom in same direction in m/sec

// Sample Problem 21 on page no. 41
printf("\n # PROBLEM 21 # \n")
printf(" Standard formula used \n")
printf(" u_x = u_x_ + v / (1+ v*u_x_/c^2) \n ")
u1 = (u+v) / (1 + ((u * v) / (c)^2))
printf("\n Velocity of one particle relative to other is %e m/sec.",abs(u1))
