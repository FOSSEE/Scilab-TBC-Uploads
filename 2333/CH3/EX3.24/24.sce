clc 
// Given that
N = 4000 // Grating lines per cm
theta = 90 // for maximum order
lambda_min = 5000 // minimum wavelength of light in angestrom
lambda_max = 7500 // maximum wavelength of light in angestrom
// Sample Problem 24 on page no. 165
printf("\n # PROBLEM 24 # \n")
printf(" Standard formula used \n")
printf(" lambda/d_lambda = n*N  \n")
n_max= sin(theta*%pi/180)/(N*lambda_min*1e-8) // minimum order observed
n_min= sin(theta*%pi/180)/(N*lambda_max*1e-8) // maximum order observed


printf("Visible orders are form %d to %d.",n_min,n_max)
