clc 
//initialisation of variables
h= 4 //ft
w= 5 //ft
l= 2 //ft
Q1= 1008.5 //cuses
n= 8 //piers
//CALCULATIONS
Q= 3.33*(w-0.2*h)*h^1.5
n1= Q1/Q
L= n*l+w*n1
//RESULTS
printf ('length of weir= %.f ft',L)
