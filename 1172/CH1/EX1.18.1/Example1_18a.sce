clc
//Given
D_10=0.5// diameter of 10th dark ring
lambda=5.9e-5// wavelength of incident light in cm 
n=10// order of ring 
//Sample Problem 18a Page No. 54
printf("\n # Problem 18a # \n")
printf(" \n Standard formula used \n   r_n^2 = n*lambda*R \n")
r=D_10/2
R=r^2/ (n*lambda)/1000
printf("Radius of curvature is %f m.\n ",R)

