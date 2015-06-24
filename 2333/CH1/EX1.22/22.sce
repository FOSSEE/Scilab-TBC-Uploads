clc 
// Given that
u_x_ = 3 //Particle velocity in X direction in m/sec
u_y_ = 4 //Particle velocity in Y direction in m/sec
u_z_ = 12 //Particle velocity in Z direction in m/sec
c= 3e8 // speed of light in m/sec
v = 0.8*c // velocity of frame of reference in m/sec

// Sample Problem 22 on page no. 42
printf("\n # PROBLEM 22 # \n")
printf(" Standard formula used \n")
printf(" u_x = u_x_ + v / (1+ v*u_x_/c^2) \n ")
u_x = (u_x_+v)/(1+v*u_x_/c^2) // velocity in X direction laboratory frame of reference in m/sec
u_y = u_y_*sqrt(1-(v/c)^2)/(1+v*u_x_/c^2) // velocity in Y direction laboratory frame of reference in m/sec
u_z = u_z_*sqrt(1-(v/c)^2)/(1+v*u_x_/c^2) // velocity in Z direction laboratory frame of reference in m/sec
printf("\n Velocity of particle is %e i+ %f j+ %f k ",u_x,u_y,u_z)

