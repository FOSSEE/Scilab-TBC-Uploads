clc
//Given that
c = 3e8 // speed of light in m/s
u_x_ = -2e8 // velocity of first photon in ground frame in m/s
v = -2e8 // velocity of second photon in ground frame in m/s
m_0 = 3e-25
// sample problem 12 page No. 226
printf("\n \n\n # Problem 12a # \n")
printf("\n Standard formula used \n u_x = (u_x_ + v) / (1 + v * u_x_ / c^2)")
u_x = (u_x_ + v) / (1 + v * u_x_ / c^2) // calculation of Velocity of photon with respect to another
m = m_0 / sqrt(1 - (u_x / c)^2) // calculation of Relativistic mass of particle with respect to another
printf ("\n Velocity of photon with respect to another is %e m/s.",u_x)
printf ("\n Relativistic mass of particle with respect to another is %e kg.",m)
