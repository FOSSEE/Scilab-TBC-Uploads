clc 
//initialisation of variables
b= 40 //ft
d= 4 //ft
k= 0.004
g= 32.2 //ft/sec^2
Q= 500 //cuses
//CALCULATIONS
A= b*d
P= b+2*d
m= A/P
f= k*sqrt(1+(0.2/m))
C= sqrt(2*g/f)
V= Q/A
i= V^2/(C^2*m)
D= 5280*i
//RESULTS
printf ('fall in feet per mile= %.2f ft',D)
