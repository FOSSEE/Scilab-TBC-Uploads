clc
//initialisation of variables
a= 2.493
b= 6.8
c= -393/(4*2.493)
d= 0.75 //ft
//CALCULATIONS
u2= (-b+sqrt(b^2-4*a*c))/(2*a)
Q= %pi*d^2*u2/4
//RESULTS
printf (' Rate of flow = %.2f ft^3/sec',Q)
