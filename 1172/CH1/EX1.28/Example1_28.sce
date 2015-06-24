clc
// Given That
aperture=6.4e-3// linear aperture in cm
lambda=6.24e-5// wavelength in cm
f=50// separation between lens and screen in cm
n=1// for first order spectrum
//Sample Problem 28 Page No. 58
printf("\n # Problem 28 # \n")
printf(" \n Standard formula used \n   a*sin(theta ) = lambda \n")
sin_theta=n*lambda/aperture
d=f*sin_theta
printf("\n Distance between the center and the first fringe is %f cm.\n",ceil(d*100)/100)
