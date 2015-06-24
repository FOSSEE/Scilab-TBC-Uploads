clc 
// Given that
lambda = 6000 // wavelength of light in angstrom
N = 200 // Grating element
n = 3 // order
d = 0.025 // diameter of wire in mm
// Sample Problem 21 on page no. 165
printf("\n # PROBLEM 21 # \n")
printf(" Standard formula used \n")
printf(" n*lambda= sin(theta)/N \n")
theta = 180/%pi*asin(N*n*lambda*1e-8) 
theta_deg = floor(theta)
theta_min = (theta - theta_deg)*60// Angle of diffraction 
e = 1/N - d*1e-1 // width of slit
ratio = 1/(N*e)
m = 1 
n1 = ratio*m
printf(" \n Angle of diffraction for third order spectrum is %d degree and %f minute.\n",theta_deg, theta_min )
printf("\n For n = %d, m = 1 is considered \n because the higher value of m results the order \nof absent spectrum more than given order %d.",n1,n)

