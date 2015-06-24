clc
//Given
lambda=5.6e-5// wavelength of incident light in cm 
f=4//focal length in meter
mu=1.5// refractive index of glass\
n=4// order of fringe
//Sample Problem 16 Page No. 53
printf ("\n # Problem 16 # \n")
printf(" \n Standard formula used \n   D_n= sqrt(2*(2*n-1)*lambda*R \n")
R= (mu-1)*2*f
D_4=sqrt (2*(2*n-1)*lambda*R*100)
printf("Diameter of 4th bright fringe is %f cm.",D_4)

