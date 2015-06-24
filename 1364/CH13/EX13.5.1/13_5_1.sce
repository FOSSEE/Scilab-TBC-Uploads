clc
//initialisation of variables
Q= 20 //ft/sec
h= 12 //in
g= 32.2 //ft/sec^2
//CALCULATIONS
F= Q/sqrt(g*h/12)
r= 0.5*(sqrt(1+8*F^2)-1)
y= h*r/12
s=(y-(h/12))^3*12/(4*h*y)
Q1= s*62.3*Q/550
//RESULTS
printf (' Rate of flow= %.2f in',Q1)
