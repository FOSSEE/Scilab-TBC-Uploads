
clc 
//initialisation of variables
k= 0.01
d= 6 //in
l= 1000 //ft
v= 8 //ft/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
f= k*(1+(1/d))
hf= 4*f*l*v^2*12/(2*g*d)
C= sqrt(2*g/f)
hf1= v^2*4*(12/d)*l/C^2
//RESULTS
printf ('head lost in friction= %.2f ft of water',hf)
printf ('\n head lost in friction= %.2f ft of water',hf1)
