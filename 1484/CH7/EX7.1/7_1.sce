clc 
//initialisation of variables
i= 1/4500
w=3 //ft
d= 3 //ft
k= 0.003
g= 32.2 //ft/sec^2
//CALCULATIONS
A= 0.5*%pi*d^2/4
P= %pi*d/2
m= A/P
f= k*(1+(0.1/m))
C= sqrt(2*g/f)
V= C*sqrt(m*i)
Q= A*V
//RESULTS
printf ('Discharge= %.2f cuses',Q)
