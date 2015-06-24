clc
//Given that
t=0.00035// thickness of glass sheet in cm
lambda=0.000055// wavelength of incident light in cm 
N=4// order of fringe
//Sample Problem 9 Page No. 50
printf("\n # Problem 9 # \n")
printf(" \n Standard formula used \n   (mu – 1 )*t = n* lambda \n")
mu=N*lambda/t+1
printf("\n Refractive index of sheet is %f .", mu)
