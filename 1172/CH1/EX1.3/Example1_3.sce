clc
//Given that
beta=0.0320//fringe width in cm
D=100// separation between source and screen in cm
d=0.184// separation between sources in cm 
//Sample Problem 3 Page No. 47
printf ("\n # Problem 3 # \n")
printf(" \n Standard formula used   beta=lambda*D/d \n")

lambda=d*beta/D*1e8
printf("\n Wavelength of light used is %d Angstrom.",lambda)


