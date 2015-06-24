clc
//Initialization of variables
C=0.98
m=1
v=12.55 //ft^3/lbm
V=1372 //ft/s
//calculations
A=m*v/(C*V) *144
D=sqrt(A*4/%pi)
//results
printf("Area = %.3f in^2",A)
printf("\n diameter = %.2f in",D)
