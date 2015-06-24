clc
//initialisation of variables
b= 6 //in
h= 12 //in
l= 20 //ft
P= 100000 //lb
//CALCULATIONS
S= -P/(b*h)
S1= l^2*6*12/(8*b*h^2)
w= -S/S1
//RESULTS
printf ('Safe distributed load= %.1f lb per ft',w)
