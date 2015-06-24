clc
//Given that
x_n=1.88// fringe separation of nth fringe from central fringe in cm 
N=20// order of fringe
beta=0.02//fringe width in cm
D=120// separation between source and eyepiece in cm
d=0.076// separation between sources in cm 
//Sample Problem 5 Page No. 47
printf ("\n # Problem 5 # \n")
printf (" \n Standard formula used \n   beta= lambda*D/d \n")
beta=x_n/N // calculation of angle formed
lambda=d*beta/D*1e8 // calculation of Wavelength of light
printf ("\n Wavelength of light used is %d Angstrom.", lambda)
