clc
//Given that
h = 2620 // distance of satellite from surface of Earth in km
R_e = 6400 // radius of Earth in km
M_e = 6e24 // mass of Earth in kg
G = 6.67e-11 // universal gravitational constant 

// sample problem 5 page No. 300
printf("\n\n\n # Problem 5 # \n")

printf("Standard formula used \n\t v_o = sqrt(G*M_e/r) \n ")
printf("\n \t T = 2 * pi * r / v_o \n ")
r = R_e + h
v_o = sqrt(G * M_e / (r * 1e3))
T = 2 * %pi * r*1000 / (v_o*3600)
printf ("\n Orbital velocity of satellite is %f km/s \n period of revolution is %f h.",v_o / 1000, T)
