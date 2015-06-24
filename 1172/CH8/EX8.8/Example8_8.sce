clc
//Given that
t = 1 // period of  Earth's revolution around Sun in years
r = 1.5e8 // distance between Sun and Earth in km
G = 6.67e-11 // Universal gravitational constant
// sample problem 8 page No. 302
printf("\n\n\n # Problem 8 # \n")
printf("Standard formula used T = 2 * pi * sqrt ((r^3)/G*M_e) \n ")
T = t * 24 * 60 * 60 *356// calculation of time period in seconds
M_s = 4 * %pi^2 * (r * 1000)^3 / (G * T^2) // calculation of mass of Sun
printf ("\n Estimated mass of Sun is %e kg.", M_s)


