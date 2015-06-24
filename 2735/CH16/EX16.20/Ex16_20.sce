clc
clear
//Initialization of variables
x=poly(0,"x")
vec=roots(24*x^3 +48*x^2 + 7*x -4)
x=vec(3) *100
//results
printf("Extent of reaction= %d percent",100-x)

