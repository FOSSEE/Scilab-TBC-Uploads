clc
//Given that
g_pole = 9.8 // gravitational acceleration at pole
m = 1 // mass of substance in kg
R_e = 6.4e6 // radius of earth in m
// sample Problem 7  Page No. 179
printf("\n  # Problem 7 # \n")
printf("Standard formula used is \n coriolis force = -2*m*f x v\n \n")
 g_equator = 0.75 *g_pole // gravitational acceleration at equator in m/s^2
  f = sqrt ((g_pole - g_equator)/ R_e)
 printf ("Angular velocity of Earth will be %e rad/s .\n ",f)

