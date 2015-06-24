clc 
//initialisation of variables
Q= 100 //cuses
V= 2 //ft/sec
n= 1.5
k= 0.006
g= 32.2 //ft/sec^2
//CALCULATIONS
A= Q/V
d= sqrt(A/((2*sqrt(n^2+1))-n))
m= A/d
mb= m-n*d
bt= m+n*d
m1= d/2
f= k*(1+(4/m1))
C= sqrt(2*g/f)
i= V^2/(C^2*m1)
//RESULTS
printf ('slope %.5f ',i)
