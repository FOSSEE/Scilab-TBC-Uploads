//Example 5.11, Page number 5.30

clc;clear;close

// variable declaration
n1=1.480 //unitless
n2=1.465 //unitless
V=2.405 //unitless
lamda=850*10**-9 // in m

// Calculations
delta=(n1**2-n2**2)/(2*n1**2) //unitless
a=(V*lamda*10**-9)/(2*%pi*n1*sqrt(2*delta)) // in m

// Results
printf("delta = %.2f",(delta))
printf("\nCore radius,a = %.2f micro-m",(a*10**15))
