clc
//initialisation of variables
l= 6 //ft
g= 32.2 //ft/sec^2
l1= 6 //ft
l2= 6 //ft
l3= 34//ft
//CALCULATIONS
a= -((l1+l2-l3)/l)*g
w= sqrt(a/4.5)*(60/(2*%pi))
//RESULTS
printf ('maximum spees = %.1f cycles/min',w)
