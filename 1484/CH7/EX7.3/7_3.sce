clc 
//initialisation of variables
b= 40 //ft
d= 4 //ft
n= 1
k= 0.005
i= 1/3250
g= 32.2 //ft/sec^2
//CALCULATIONS
A= (b+d)*d
P= b+2*d*sqrt(n^2+1)
m= A/P
f= k*(1+(0.8/m))
C= sqrt(2*g/f)
V= C*sqrt(m*i)
Q= V*A
//RESULTS
printf ('Discharge= %.f cuses',Q)
