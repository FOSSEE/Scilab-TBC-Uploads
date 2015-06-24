clc
//Initialization of variables
x=poly(0,"x")
//calculations
y=6*x^2 -6*x+1
z=roots(y)
//results
printf("For stability, s must be greater than %.2f and less than %.2f and must be less than 1",z(1),z(2))
