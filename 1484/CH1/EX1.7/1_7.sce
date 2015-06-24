clc 
//initialisation of variables
d= 5 //ft
x= 3 //ft
w= 62.4 //lb/ft^3
a= 90 //degrees
//CALCULATIONS
h= ((%pi*d^4/64)+(x^2*%pi*d^2/4))/(%pi*d^2*x/4)
//RESULTS
printf ('depth of the pressure= %.2f ft',h)
