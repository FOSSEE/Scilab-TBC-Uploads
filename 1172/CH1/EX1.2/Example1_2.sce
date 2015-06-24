clc
//Given that
D=80// separation between source and screen in cm
d=0.18// separation between sources in cm 
n=4// order of fringe
x_n=1.08// distance from central bright fringe in cm
//Sample Problem 2 Page No. 47
printf("\n # Problem 2 # \n")    
printf(" \n Standard formula used \n   x_n= n*lambda*D/d \n")

lambda=d*x_n/(D*n)*1e7
printf("\n Wavelength of light used is %d Angstrom.", lambda)


