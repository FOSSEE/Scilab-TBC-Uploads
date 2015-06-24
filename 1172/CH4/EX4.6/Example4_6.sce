clc
//Given that
R_e = 6.4e6 // radius of earth in m
theta_pole = 90 // angle between pole and rotational axis 
theta_equator = 0 // angle between equator and rotational axis 
g_pole = 10 // gravitational acceleration at pole in m/s^2
g_equator = 0 // gravitational acceleration at equator in m/s^2
// sample Problem 6 Page No. 178
printf ("\n \n\n # Problem 6 # \n")
printf("Standard formula used is g1 = g - R_e*f^2*(cos(theta))^2 \n ")
 f = sqrt (g_pole / R_e)
 T = 2 * %pi / f / 3.6e3
 printf("Angular velocity of Earth will be %e rad/s \n Time period would be %f hours",f,T)

