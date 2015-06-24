clc
//Initialization of variables
m=5 //lbm
v=15 //ft^3/lbm
V=100 //ft/s
//calculations
A=m*v/V
D=(4*A/%pi)^(0.5)
//results
printf("Diameter = %.1f in",D*12)
