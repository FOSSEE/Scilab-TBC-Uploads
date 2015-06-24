clc 
//initialisation of variables
sp= 0.87
d= 12 //ft
W= 62.4 //lb/ft^3
Wa= 30 //lb/in^2
//CALCULATIONS
A= %pi*d^2/4
w= W*sp
x= Wa*144/(w)
P= w*A*x
h= x+(A*d^2/16/(A*x))
//RESULTS
printf ('force exerted by the oil upon the gate = %.f lb ',P)
printf ('\n position of centre of pressure = %.3f ft ',h)
