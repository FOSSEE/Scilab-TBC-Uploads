clc
//Initialization of variables
y=1.495 //ft
Q=14 //cfs
g=32.2
//calculations
yc=(Q^2 /g *2)^(1/5)
//results
printf("yc = %.2f ft is greater than uniform flow depth. Hence flow is supercritical",yc)
