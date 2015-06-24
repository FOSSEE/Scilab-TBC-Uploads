clc
//Given that
mu=1.60// refractive index of plane glass prism
lambda=0.0000589// wavelength of incident light in cm 
N=15// order of fringe
//Sample Problem 8 Page No. 49
printf("\n # Problem 8 # \n")
printf(" \n Standard formula used \n   del_x = D/2d *(mu-1)*t \n")
t=N*lambda/(mu-1)
printf("\n Thickness of sheet is %e cm.", t)

