clc
//Given that
mu = 1.5 // refractive index of plane glass prism
theta = %pi / 180 // angle of prism
y1 = 10 // separation between slit and biprism in cm 
y2 = 100 //separation sbetween biprism and screen in cm 
lambda = 0.00005893// wavelength of incident light in cm 
//Sample Problem 6 Page No. 48
printf("\n # Problem 6 # \n")
printf("\n Standard formula used \n Beta = (D * lambda) / d")
d = 2 * ( mu -1) * theta * y1
D =  y1 + y2
Beta = (D * lambda) / d
printf("\n Fringe width observed at distance 1 meter  is %f m", Beta)

