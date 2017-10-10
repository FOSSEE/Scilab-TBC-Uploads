clc;
clear;
lambda=5*10^-5 //wavelength in cm
e=1/6000 //No. of lines per centimeter on the grating surface

//calculation
//1st order 
theta_1= asind(lambda/e) //angle in degree

//3rd order
theta_3= asind((3*lambda)/e) //angle in degree

angle_of_deviation = theta_3 - theta_1

printf("Difference in the angle of deviation in the first order and third order spectra = %1.1f degrees",angle_of_deviation)
