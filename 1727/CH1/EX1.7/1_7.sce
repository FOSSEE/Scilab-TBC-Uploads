clc 
//Initialization of variables
gam=981 //dyn/cm^2
sigma=72 //dyn/cm
theta=0 //degrees
d=0.5 //cm
depth=90 //cm
//calculations
h=4*sigma*cosd(theta) /(gam*d)
Td=depth-h
//results
printf("True depth = %.3f cm",Td)
