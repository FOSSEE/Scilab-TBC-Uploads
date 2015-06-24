clc
//initialisation of variables
w= 60 //re/min
d= 1 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
a= w^2*d*4*%pi^2/(2*60^2)
i= a/g
o= atand(i)
//RESULTS
printf ('slope ofthe free surface = %.1f degrees',o)
