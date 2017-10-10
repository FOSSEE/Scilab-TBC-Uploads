//chapter 1 Ex 33

clc;
clear;
close;
//The given series is in geometric progression
a1=2; a2=2^2; n=10;
r=a2/a1;

Sum=a1*(r^n-1)/(r-1); //formula for GP
printf("The required sum is %d",Sum);
