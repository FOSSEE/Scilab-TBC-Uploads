clc 
//initialisation of variables
g= 32.2 //ft/sec^2
H= 200 //ft
f= 0.01
L= 8100 //ft
d= 3 //in
d1= 1 //in
//CALCULATIONS
vn= sqrt(2*g*H/(1+(4*f*L*(1/d)^4/(d/12))))
h= vn^2/(2*g)
//RESULTS
printf ('height of the jet= %.2f ft',h) 
