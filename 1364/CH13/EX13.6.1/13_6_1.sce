clc
//initialisation of variables
d= 0.94
b= 20 //ft
h= 5 //ft
w= 40 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= 0.309*d*b*h^1.5
u=Q/(h*w)
h1= h+(u^2/(2*g))
Q1= 0.309*d*b*h1^1.5
//RESULTS
printf (' Rate of flow= %.f ft^3/sec',Q1)
