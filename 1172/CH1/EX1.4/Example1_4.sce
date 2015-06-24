clc
//Given that
beta=0.02//fringe width in cm
D=100// separation between source and screen in cm
u=30// separation between slit and convex lens in cm
I=0.7// separation between two images of slits on screen in cm
//Sample Problem4 Page No. 47
printf("\n # Problem 4 # \n")
printf(" \n Standard formula used \n beta=lambda*D/d \n")

v=100-u
O=I*u/v
d=O
lambda=d*beta/D*1e8
printf("\n Wavelength of light used is %d Angstrom.", lambda)


