
clc
//initialisation of variables
f= 0.0056
l= 150 //ft
v= 8 //ft/sec
d= 8//in
g= 32.2//ft/sec^2
//CALCULATIONS
hf= 4*f*l*v^2/((d/12)*2*g)
hf1= v^2*12*4*150/(106^2*d)
//RESULTS
printf (' head lost in friction = %.2f ft of water',hf1)
