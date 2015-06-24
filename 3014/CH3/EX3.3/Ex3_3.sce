
 
 clc
//given that
d = 1.87 // crystal spacing in angstrom
n = 2 // order for longest passing wavelength
theta = 30 // angle for longest passing wavelength
printf("Example 3.3")
lambda = 2*d*sin(theta*%pi/180)/n // Calculation of longest wavelength

printf("\n Longest wavelength is %f angstrom. \n\n\n",lambda)

