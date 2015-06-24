clc
//Given that
h = 3e5 // distance of satellite from surface of Earth in m
R_e = 6.38e6 // radius of Earth in km
M_e = 6e24 // mass of Earth in kg
g = 9.8 // gravitational acceleration in m/s2 

// sample problem 6 page No. 301
printf("\n\n\n # Problem 6 # \n")

printf("Standard formula used v_o = sqrt(G*M_e/r) \n ")
printf("Standard formula used T = 2 * pi * r / v_o \n ")
r = R_e + h// calculation of effective distance between Earth and satellite

G = g * R_e^2 / M_e// calculation of gravitational constant 
v_o = sqrt(G * M_e / r) / 1000// calculation of orbital velocity of satellite
T = 2 * %pi * r / (v_o * 1000) / 3.6e3 // calculation of period of revolution of satellite

printf ("\n Orbital velocity of satellite is %f km/s \n  period of revolution is %f h.",v_o, T)
