clc
//Given that
c = 3e8 // speed of light in m/s
u_x_ = -3e8 // velocity of first photon in ground frame in m/s
v = -3e8 // velocity of second photon in ground frame in m/s
// sample problem 2 page No. 222
printf("\n \n\n # Problem 2 # \n")
printf("\n Standard formula used is  u_x = (u_x_ + v) / (1 + v * u_x_ / c^2) ")
u_x = (u_x_ + v) / (1 + v * u_x_ / c^2) // calculation of Velocity of photon with respect to another
printf ("\n Velocity of photon with respect to another is %d * c \n Thus photons are approaching each other.",u_x / c)
