clc 
//initialisation of variables
l= 2 //ft
b= 3 //ft
a= 60 //degrees
h= 8 //ft
w= 62.4 //lbs/ft^3
//CALCULATIONS
x= h+(b/l)*cosd(a)
P= w*l*b*x
//RESULTS
printf ('total pressure = %.f lb ',P)
