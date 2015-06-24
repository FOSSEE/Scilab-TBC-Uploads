clc 
//initialisation of variables
d1= 24 //in
Q= 10 //cuses
d2= 18 //in
d3= 12 //in
f= 0.01
l= 1000 //ft
g= 32.2 //ft/sec^2
l1= 100 //ft
l2= 600 //ft
//CALCULATIONS
v1= sqrt(4*Q/(%pi*(d1/12)^2))
v2= sqrt(4*Q/(%pi*(d2/12)^2))
v3= sqrt(4*Q/(%pi*(d3/12)^2))
hf= 4*f*l*v1^2/(2*g*(d1/12))
dh= l1-hf
h1= 4*f*l2*v2^2/((d2/12)*2*g)
dh1= dh-h1
h2= 4*f*(l-l2)*v3^2/((d3/12)*2*g)
dh2= dh1-h2
//RESULTS
 printf ('level gradient at D= %.2f ft',dh2)
 
 //ANSWER GIVEN IN THE TEXTBOOK IS WRONG
 
