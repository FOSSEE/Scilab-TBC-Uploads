clc 
// Given That
a = 0.45 // distance between slit and bi prism in meter
b = 0.45 // distance between screen and bi prism in meter
alpha = %pi / 180 // angle of bi prism in radian
Mu = 1.5 // refractive index of bi prism
fringe_width = 1.56e-4 // fringe width in meter 
// Sample Problem 16 on page no. 1.45
printf("\n # PROBLEM 16 # \n")
D = a + b // calculation for distance between screen and slit
lambda = (fringe_width * 2 * a * (Mu - 1) * alpha) / D // calculation for wavelength
printf("\n Standard formula used \n lambda = (2a*(mu-1)*alpha*beta)/D. \n")
printf("\n Wavelength of light = %f A.", lambda*1e10)
