clc
//initialisation of variables
x= 3 //m
y= 4 //m
P= 5 //kN
z= 2 //m
//calculations
r= sqrt(x^2+y^2)
k= r/z
I= 3/(2*%pi*((r/z)^2+1)^2.5)
s= P*I/z^2
//results
printf ('verticle stress increase at 2m = % 4f kN/m^3 ',s)
