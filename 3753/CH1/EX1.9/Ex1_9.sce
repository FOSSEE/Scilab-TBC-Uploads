//Example number 1.9, Page number 1.37

clc;clear;close


//Variable declaration
R=1// unitless
n=5// unitless
lamda=5.895*10**-7 // in m
dn=0.003 // in m

//Calculation
mu=(4*R*n*lamda)/(dn**2)

//Result
printf("Refractive index,mu = %0.2f",mu )
