clc 
//initialisation of variables
h= 5 //ft
d= 6 //ft
a= 30 //degrees
w= 62.4 //lbs/ft^3
//CALCULATIONS
A= %pi*d^2/4
X= h+(d/2)*sind(a)
P= w*A*X
Ic= %pi*d^4/64
I0= Ic+A*X^2/(sind(a))^2
h= I0*(sind(a))^2/(A*X)
//CALCULATIONS
printf ('depth of the centre os pressure= %.2f ft ',h)
