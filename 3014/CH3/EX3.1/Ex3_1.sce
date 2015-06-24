clc
//given that
d = 2.82 // crystal spacing in angstrom
n = 2 // order for longest passing wavelength
theta = 90 // angle for longest passing wavelength
printf("Example 3.1")
lambda = 2*d*sin(theta*%pi/180)/n // Calculation of longest wavelength

printf("\n Longest wavelength is %f angstrom. \n\n\n",lambda)
