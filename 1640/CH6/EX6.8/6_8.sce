clc 
//initialisation of variables
Q=100//cuses
v= 2 ///ft/sec
n= 1.5
A= 50 //ft^2
C= 120
//CALCULATIONS
d= sqrt((Q/v)/(2*sqrt(n^2+1)-n))
m= A/d
h1= m-n*d
h2= m+n*d
i= (v/C)^2*(2/d)
//RSULTS
printf ('Depth = %.2f ft ',d)
printf ('\n Bottom width = %.2f ft ',h1)
printf ('\n Top width = %.2f ft ',h2)
