clc
//initialisation of variables
Q= 1.4 //ft^3/sec
d= 6 //in
d1= 3 //in
h= 9 //in
s= 13.6/0.78
C= 0.96
g= 32.2 //ft/sec^2
w= 62.3 //lb/ft^3
//CALCULATIONS
h1= (Q*4*12^2/(C*%pi*d1^2))^2*(1-(d1/(2*d))^2)/(2*g*(s-1))
dpbyw= (h/12)+((s)-1)*h1
dp= dpbyw*h1*w/144
//RESULTS
printf (' pressure difference = %.2f lbf/in^2 ',dp)
