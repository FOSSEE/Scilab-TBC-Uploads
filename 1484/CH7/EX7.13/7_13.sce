clc 
//initialisation of variables
d= 8 //ft
V= 6 //ft/sec
g= 32 //ft/sec^2
//CALCULATIONS
h= (V*d/4)^2/g
d2= -(d/4)+sqrt((2*(d/2)*(V*(d/2))/g)+((d/2)^2/4))
x= (d/2)/d2
l= ((1/(x^1.5))-1)^0.81
Lw= l*(d/2)*(d+(d2/2))
//RESULTS
printf ('height of standing wave= %.1f ft',Lw+34.7)
