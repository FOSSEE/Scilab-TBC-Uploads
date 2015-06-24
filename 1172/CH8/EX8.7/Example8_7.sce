clc
//Given that
t = 27.3 // period of lunar orbit around Earth in days
r = 3.9e5 // distance of satellite from  Earth in km
G = 6.67e-11 // universal gravitational constant 
// sample problem 7 page No. 301
printf("\n # Problem 7 # \n")
printf("Standard formula used \n T = 2 * pi * sqrt ((r^3)/G*M_e) \n ")
T = t * 24 * 60 * 60// calculation of time in seconds
M_e = 4 * %pi^2 * (r * 1000)^3 / (G * T^2) // calculation of mass of Earth
printf ("\n Estimated mass of Earth is %e kg.", M_e)
