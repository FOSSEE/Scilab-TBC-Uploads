clc
//Initialization of variables
Q=30 
V=1
//calculations
A=Q/V
y = sqrt(A/(sqrt(2) + 0.5))
b= (A- 0.5*y^2)/y
//results
printf("width = %.2f m",b)
printf("\n depth = %.2f m",y)
