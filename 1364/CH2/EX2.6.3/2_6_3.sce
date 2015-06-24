clc
//initialisation of variables
s= 1.03
w= 64.3 //lbf/ft^3
dg= 14 //ft
A= 40 //ft^2
b= 5 //ft
d= 8 //ft
b1= 2.5 //ft
y= 10 //ft
x= 3 //ft
z= 4 //ft
//CALCULATIONS
F= w*dg*A*16.05/36000
r= ((b*d^3/12)/(A*dg))
F3= F*b1/b
F1= (F*(x-r)-(F/2)*x)/(y-z)
F2= F-(F1+F3)
//RESULTS
printf (' force= %.3f tonf',F3)
printf (' \n force= %.3f tonf',F2)
