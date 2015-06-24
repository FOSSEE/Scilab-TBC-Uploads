clc
//Given
lambda=5.5e-5// wavelength of monochromatic light in cm
grating_element=1/4000// lines per centimeter
n=3// order of spectrum

//Sample Problem 22 Page No. 55
printf("\n # Problem 22 # \n")
printf(" \n Standard formula used \n   n*lambda= (a+b)*sin(theta)\n")
sin_theta=n*lambda/grating_element
cos_theta=sqrt(1-sin_theta^2)
disp_pow=n/ (grating_element*cos_theta)
printf (" Dispersive power   is %d. \n ",disp_pow)

