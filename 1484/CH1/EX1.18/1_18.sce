clc 
//initialisation of variables
h= 8 //ft
h1= 10 //ft
//CALCULATIONS
A= h
X= (h1/2)
Ig= h^3/12
I0= Ig+A*X^2
h2= I0/(A*X)
//RESULTS
printf ('depth at which the hinge of the shutter= %.2f ft ',h2)
