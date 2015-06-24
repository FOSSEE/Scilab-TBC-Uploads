clc 
// Given that
u = 3e8 // speed of signal in meter/sec
// Sample Problem 10 on page no. 11.21
printf("\n # PROBLEM 10 # \n")
printf(" Standard formula used \n")
printf(" u_x = u_x_ + v / (1+ v*u_x_/c^2). \n ")
u_ = (u + 3e8) / (1 + (u * 3e8) / 3e8^2)
printf("\n Velocity is %d*c, hence we can say that no signal can travel faster than light.",u_/3e8)
