 clc
//given that
lambda = 0.3 // Wavelength in angstrom
d = 0.5 // crystal spacing in angstrom
n = 2 // order 
m = 3 // order
printf("Example 3.2")
theta_n = asin(n*lambda/(2*d))*180/%pi // Calculation of angle for order n
theta_m = asin(m*lambda/(2*d))*180/%pi  // Calculation of angle for order m

printf("\nAngle for %dnd order maxima is %f degree. ",n,theta_n)
printf("\nAngle for %drd order maxima is %f degree. \n\n\n",m,theta_m)
// Answers in book are 40.97 degree and 72.29 degree which are due to wrong calculation
