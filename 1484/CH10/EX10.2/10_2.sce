clc 
//initialisation of variables
s= 13.6
h= 12 //in
u= 0.04
k= 1
d= 6 //in
g= 32.2 //ft/sec^2
w= 62.4 //lbs/ft^3
//CALCULATIONS
h1= h*(s-1)/12
hf= u*h1
hn= h1-hf
Q= k*(%pi*(d/12)^2)*sqrt(2*g)*sqrt(hn)*w*60/(10*4*sqrt(15))
//RESULTS
printf ('discharge through flow= %.f ft G.P.M',Q)
