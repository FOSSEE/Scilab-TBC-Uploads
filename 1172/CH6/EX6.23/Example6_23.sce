clc
//Given that 
h = 6.63e-34 // plank's constant
c = 3e8 // speed of light in m/s
p_rest_mass = 938 // rest mass of proton in Mev/
ap_rest_mass = 938 // rest mass of antiproton in Mev
// sample problem 23 page No. 232
printf("\n \n\n # Problem 23 # \n")
printf("\n Standard formula used \n E = h* c / lambda")
lambda = h * c / ((p_rest_mass + ap_rest_mass) * 1.6e-19) // calculation of  Threshold wavelength for proton - antiproton production
printf( "\n Threshold wavelength for proton - antiproton production is  %f angstrom.", lambda / 1e-10)

