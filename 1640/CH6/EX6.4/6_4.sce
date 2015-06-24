clc 
//initialisation of variables
d= 3 //ft
i= 1/4500
C= 80
//CALCULATIONS
A= 0.5*(%pi*d^2/4)
P= %pi*d/2
m= A/P
v= C*sqrt(m*i)
Q= v*A
//RESULTS
printf ('Discharge = %.2f cuses ',Q)
