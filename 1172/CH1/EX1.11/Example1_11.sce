clc
//Given that
D=120// separation between source and screen in cm
d=0.00075// separation between sources in cm 
l=1.888// transverse distance moved by eyepiece in cm
N=25// order of fringe
//Sample Problem 11 Page No. 50
printf("\n # Problem 11 # \n")
printf(" \n Standard formula used \n beta=lambda*D/d \n")
lambda=d*l/(D*N)*1e10
printf("\n Wavelength of light used is %d Angstrom.", lambda)
