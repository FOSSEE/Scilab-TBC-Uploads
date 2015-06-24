clc 
//initialisation of variables
i= 1/6400
b= 40 //ft
d= 5 //ft
C= 140
h= 6 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
A= b*d
P= b+2*d
m= A/P
v= C*sqrt(m*i)
V= v*(d/h)
Q= v*b*d
x= h-(Q/(3.09*(b/2)))^(2/3)-(V^2/(2*g))
//RESULTS
printf ('height of pump= %.2f ft',x)
