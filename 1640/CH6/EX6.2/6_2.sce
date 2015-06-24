clc 
//initialisation of variables
b= 10 //ft
n= 1
i= 1/1000
d= 1.5 //ft
C= 110
w= 62.4 //lb/ft^3
//CALCULATIONS
L= sqrt(2*d^2)
P= b+2*L
A= d*(b+n*d)
m= A/P
v= C*sqrt(m*i)
Q= A*v*w*60*60*24/10
//RESULTS
printf ('Discharge = %.2e gal/day ',Q)
