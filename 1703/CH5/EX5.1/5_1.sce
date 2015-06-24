
clc
//initialisation of variables
h= 2.5 //ft
a= 45 //degrees
x= 5 //ft
Q= 45 //cuses
v= 2.6 //ft/sec
w= 6.92 //ft
C= 120
//CALCULATIONS
b= (Q/(v*h))-h
p= b+2*(h+sqrt(2))
A= h*w
m= A/p
i= (v/(C*sqrt(m)))^2
//RESULTS
printf ('Width = %.2f ft',b) 
printf ('\n Slope = %.6f ',i) 
