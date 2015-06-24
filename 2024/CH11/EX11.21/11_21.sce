clc
//Initialization of variables
x=poly(0,"x")
vec=roots(24*x^3 +48*x^2 + 7*x -4)
x=vec(3)
//results
printf("degree of dissociation = %.2f",x)
