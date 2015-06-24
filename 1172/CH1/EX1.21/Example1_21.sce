clc
//GivenS
lambda=6.2e-5// wavelength of monochromatic light in cm
grating_element= 1/5000// lines per centimeter
theta=90// angle of second order spectral line in degree 

//Sample Problem 21 Page No. 55
printf("\n # Problem 21 # \n")
printf(" \n Standard formula used \n   n*lambda= (a+b)*sin(theta)  \n")
n=grating_element/lambda
printf(" Maximum order n = %d may be seen in between the given wavelength spectrum.\n ",n)

