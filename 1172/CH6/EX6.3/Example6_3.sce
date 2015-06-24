clc
//Given that
c = 3e8 // speed of light in m/s
u_x_ = -0.9 * c // velocity of first spaceship in ground frame in m/s
v = -0.9 *c // velocity of second spaceship in ground frame in m/s
// sample problem 3 page No. 222
printf("\n \n\n # Problem 3 # \n")
printf("\n Standard formula used is  u_x = (u_x_ + v) / (1 + v * u_x_ / c^2) ")
u_x = (u_x_ + v) / (1 + v * u_x_ / c^2) // calculation of Velocity of photon
printf ("\n Velocity of photon with respect to another is %f c.", u_x / c)

