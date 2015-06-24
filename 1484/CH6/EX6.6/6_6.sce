clc 
//initialisation of variables
f= 0.01
l= 60 //ft
d= 6 //in
g= 32.2 //ft/sec
v= 10 //ft/sec
d1= 3 //in
l1= 20 //ft
k= 0.62
//CALCULATIONS
H= 4*f*l*v^2/(2*g*(d/12)^2)
v2= v*d1^2/d^2
hf= 4*f*l1*v^2/(2*g*(d/12)^2)
h= (v-v2)^2/(2*g)
h1= 4*f*l1*v2^2/(2*g*2*(d/12)^2)
h2= v^2*4*f*l1/(2*g*(d/12)^2)
h3= ((1/k)-1)^2*v^2/(2*g)
dh= (H-hf-h-h1-h2-h3)
//RESULTS
printf ('Saving in head= %.2f ft',dh)
