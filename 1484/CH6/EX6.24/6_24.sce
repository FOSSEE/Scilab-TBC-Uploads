
clc 
//initialisation of variables
d= 1/4 //in
d1= 1//in
g= 32.2 //ft/sec^2
H= 50 //ft
f= 0.1
L= 100 //ft
l= 775 //ft
//CALCULLATIONS
vn= sqrt(2*g*l*H*0.01/(1+(4*f*L*(d/d1)^2/(d1/12))))
h= vn^2/(2*g)
//RESULTS
printf ('height of the jet= %.2f ft',h) 
