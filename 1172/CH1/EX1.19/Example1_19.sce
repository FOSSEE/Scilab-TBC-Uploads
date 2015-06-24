clc
//Given
mu=4/3
D_10=0.6// diameter of tenth ring in cm
lambda=6.0e-5// wavelength of incident light in cm 
n=10// order of ring 

//Sample Problem 19 Page No. 54
printf("\n # Problem 19 # \n")
printf(" \n Standard formula used \n   D_n^2 = 4*n*lambda*R/mu \n")
R= (mu*D_10^2/ (4*n*lambda))

printf(" Radius of curvature of lens is %d cm.\n ",ceil(R))



