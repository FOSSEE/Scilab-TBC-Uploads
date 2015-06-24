clc();
clear;
//Given:
N = 15000;//Number of lines per inch
a_plus_b = (2.54/N)*10^8 ;//Grating period in A
lambda = 1 ; //Wavelength in A
//Grating equation :(a+b)*sin(theta_n) = n*lambda
//First order maximum 
theta1 = asind(lambda/a_plus_b); // angle in degrees
printf("The first order maximum will be obtained at : %.4f degrees .\n\n",theta1);


