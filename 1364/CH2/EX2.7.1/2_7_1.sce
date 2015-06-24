clc
//initialisation of variables
w= 62.3 //lb/ft^3
b= 1 //ft
s= 42 //ft
d= 170 //ft
l= 15.75
a= 170/3
//CALCULATIONS
W= 2*w*b*s*d/3
F= w*b*d^2/2
L= l+a*(F/W)
//RESULTS
printf (' distance= %.f ft from O',L)
