clc 
//initialisation of variables
d= 3 //ft
i= 1/1000
C= 65
Cd= 0.56
g= 32.2 //ft/sec^2
h1= 7.5 //ft
h2= 3 //ft
//CALCULATIONS
m= d
v= C*sqrt(m*i)
Q= v*d
H= (Q*d/(2*sqrt(2*g)*Cd))^(2/3)
h= h1+h2-H
//RESULTS
printf ('Height of dam = %.2f ft ',h)
