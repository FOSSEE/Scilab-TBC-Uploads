clc 
// Given that
E = 1.1 // energy of gamma radiation in Mev
l = 0.25 // length of aluminium in meter
p = 0.02 // reduce in intensity in beam
d = 2700 // density of aluminium in kg/m^3 
// Sample Problem 2 on page no. 12.32
printf("\n # PROBLEM 2 # \n")
printf("Standard formula used \n")
printf("I = I_0*e^(-mu*x) \n")
mu = (1 / l) * log(1 / p)
k = mu / d
x = 0.693 / mu
printf("\n Mass attenuation coefficient of Al for this radiation is %e m^2/kg.\n Half value thickness is %f meter.",k,x)
