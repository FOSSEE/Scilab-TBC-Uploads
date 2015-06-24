clc
//Example 11.3
//Calculate the permeability
Q=1//ft^3/min
mew=0.018//cP
dx=0.5//in
A=1//ft^2
dP=2//lbf/in^2
//1 ft = 12 in
//1 min = 60 sec
//1 ft^2.cP = 2.09*10^(-5) lbf.s
//1 darcy = 1.06*10^(-11) ft^2
k=(Q*mew*(dx/12)/A/dP)*(1/144)*2.09*10^(-5)*(1/60)*(1/(1.06*10^(-11)))//darcy
printf("The permeability is %f darcy",k);