//Chapter 4
//Example 4_2
//Page 74

clear;clc;

p=200000;
s=10000;
n=20;
r=0.08;

q=(p-s)*r/((1+r)^n-1);
printf("Annual payment for sinking fund = Rs. %.0f \n\n", q);