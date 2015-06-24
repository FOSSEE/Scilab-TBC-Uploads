clc
//Given
D_5=0.336// diameter of fifth ring in cm
D_15=0.59// diameter of fifteenth ring in cm
lambda=5.893e-5// wavelength of incident light in cm 
p=10
//Sample Problem 17 Page No. 53
printf("\n # Problem 17 # \n")
printf(" \n Standard formula used \n   D_(n+p) ^2 – D_n^2 = 4*p*R*lambda \n")
r= ((D_15^2-D_5^2)/ (4*p*lambda))
printf("\n  Radius of curvature of Plano-convex lens is %f cm. ",r)
