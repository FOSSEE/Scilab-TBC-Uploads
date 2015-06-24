 clc
//given that
lambda = 3.6e-9 // Wavelength in cm
theta = 4.8 // glancing angle in degree
n = 1 // order 

printf("Example 3.4")
d = n*lambda/(2*sin(theta*%pi/180)) // calculation of crystal spacing in angstrom

printf("\n Crystal spacing in angstrom is %e cm. \n\n\n",d)

