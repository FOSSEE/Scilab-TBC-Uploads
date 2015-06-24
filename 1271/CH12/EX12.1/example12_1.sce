clc 
// Given that
E = 1.14 // energy of gamma radiation in Mev
l = 0.2 // length of aluminium in meter
p = 0.03 // reduce in intensity in beam
d = 2700 // density of aluminium in kg/m^3 
// Sample Problem 1 on page no. 12.31
printf("\n # PROBLEM 1 # \n")
printf("Standard formula used \n")
printf("I = I_0*e^(-mu*x) \n")
mu = (1 / l) * log(1 / p)
k = mu / d
x = 0.693 / mu
printf("\n Mass absorption coeffiecient of Al for this radiation is %f m^2/kg.\n Half value thickness is %f meter.",k,x)
