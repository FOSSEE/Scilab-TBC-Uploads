clc
//given that
v1 = 50 // Previous applied voltage
v2 = 65 // final applied voltage
k = 12.28 
d = 0.91 // Spacing in a crystal in angstrom
printf("Example 1.29")

lambda = k/sqrt(v1)
theta= asin(lambda/(2*d))// Angel for initial applied voltage
lambda1 = k/sqrt(v2)// wavelength for final applied voltage
theta1 = asin(lambda1/(2*d))// Angel for final applied voltage
printf("\n For first order, sin(theta) is %f \n For second order sin(theta) must be %f \n which is not possible for any value of angle. \n So no maxima occur for higher orders \n\n\n",sin(theta),2*sin(theta))
printf("\n Angle of diffraction for first order of beam \n is %f degree at %d Volts\n\n\n",theta1*180/%pi,v2)
// Answer in book is 57.14 degree

