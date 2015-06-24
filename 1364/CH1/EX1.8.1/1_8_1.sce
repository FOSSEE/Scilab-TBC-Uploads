clc
//initialisation of variables
W= 4500 //tonf
b= 6 //ft
d= 2.5 //ft
s= 0.83
//CALCULATIONS
I= b*d^3/12
r= 3*s*I*1000/(W)
//RESULTS
printf ('Reduction caused by three compartments= %.3f mmE',r)
