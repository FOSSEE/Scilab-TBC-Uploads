clc
//Given that
R_e = 6.4e6 // radius of earth in m
T = 8.64e4 // time period of one rotation of earth
theta_pole = 90 // angle between pole and rotational axis 
theta_equator = 0 // angle between equator and rotational axis 
g_pole = 9.8 // gravitational acceleration at pole in m/s^2
// sample Problem 5 Page No. 178
printf ("\n \n\n # Problem 5 # \n")
printf("Standard formula used is g1 = g - R_e*f^2*(cos(theta))^2 \n ")
f = 2 * %pi / T // rotational frequency of earth
 g_equator = g_pole -  R_e * f^2
 del_g = g_pole - g_equator
printf(" \n Difference in gravitational acceleration at pole and equator is %e m/s^2 ", del_g)

