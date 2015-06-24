clc 
//initialisation of variables
d= 8 //ft
d1= 2 //ft
h= 4 //ft
h1= 2 //ft
w= 62.4 //lbs/ft^3
//CALCULATIONS
A1= %pi*d^2/4
A2= %pi*d1^2/4
A= A1-A2
x= (A1*d-A2*(d+h-h1))/A
P= w*A*x
Ig= ((%pi*d^4/64)+(A1*(d-x)^2))-((%pi*d1^4/64)+(A2*(h1+d-x)^2))
h2= (Ig/(A*x))+x
//RESULTS
printf ('depth of the centre of the pressure= %.1f ft ',h2)
