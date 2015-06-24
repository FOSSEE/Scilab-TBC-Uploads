clc 
//initialisation of variables
d1= 4 //ft
d2= 2 //ft
h1= 50 //ft
h2= 45 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
r= (d1^2/d2^2)
v1= sqrt((h1-h2)*2*g/(r^2-1))
Q= v1*%pi*d1^2/4
//RESULTS
printf ('discharge through pipe= %.2f cubic feet per second ',Q)
