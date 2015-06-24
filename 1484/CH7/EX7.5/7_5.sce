clc 
//initialisation of variables
Q= 600 //cuses
V= 3 //ft/sec
n= 1
i= 1/3200
C= 80
d= 6 //ft
//CALCULATIONS
A= Q/V
m= V^2/(C^2*i)
b= (A/d)-d
//RESULTS
printf ('width= %.1f ft',b)
