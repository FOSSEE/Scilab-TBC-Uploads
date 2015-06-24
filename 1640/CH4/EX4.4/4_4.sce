clc 
//initialisation of variables
b= 3 //ft
H= 1 //ft
Q= 9 //cfs
k= 1.105
h= 0.1 //ft
//CALCULATIONS
K= Q/b
n= (k-log10(3*K))/h
//RESULTS
printf ('K = %.f  ',K)
printf ('\n n = %.1f  ',n)
