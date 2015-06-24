clc
//Given that
R_e = 6.4e6 // radius of Earth in km
M_e = 6e24 // mass of Earth in kg
G = 6.67e-11 // universal gravitational constant
u = 6e3 // initial speed of rocket in m/s
	
// sample problem 9 page No. 302
printf("\n\n\n # Problem 9 # \n")

printf("Standard formula used U_f - U_i = 1/2 * m *(u^2 - v^2)\n ")
h = ((R_e * 1e3)^2 * u^2) / (2 * G * M_e - R_e * u^2) / 1000    // calculation of Height reached by rocket before returning to Earth

printf ("\n Height reached by rocket before returning is %e km.",h)
