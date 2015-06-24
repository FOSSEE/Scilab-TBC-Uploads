clc
clear
//Initialization of variables
k=5
//calculations
x=poly(0,"x")
p=x^2 *(k-x) -k^2 *(1-x)^2 *(3-x)
vec=roots(p)
x=vec(3)
//results
printf("degree of dissociation = %.2f",x)
