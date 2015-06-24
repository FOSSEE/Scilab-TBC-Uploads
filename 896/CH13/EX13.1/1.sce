clc
//Example 13.1
//Calculate the pressure gradient
v=1//ft/s
d=0.5//ft
A=(%pi)/4*d^2//ft^2
Q=v*A//ft^3/s
//Let DP denote the pressure gradient
n=0.41//dimentionless
K=0.66//kg/m/s
//1 m = 3.281 ft 
Q1=Q/3.281^3//m^3/s
d1=d/3.281//m
DP=(Q1*8*(3*n+1)/(n*(%pi)*d1^3))^n*(4*K/d1)//Pa/m
printf("The pressure gradient is %f Pa/m",DP);