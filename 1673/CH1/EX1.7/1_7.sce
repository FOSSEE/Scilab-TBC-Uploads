//absolute error
//example 1.7
//page 10
clc;clear;close;
n=[0.1532 15.45 0.0000354 305.1 8.12 143.3 0.0212 0.643 0.173];//original numbbers
//rounding all numbers to 2 decimal places
n=[305.1 143.3 0.15 15.45 0.00 8.12 0.02 0.64];
sum=0;
l=length(n);
for i=1:l
    sum=sum+n(i);
end
E_A=2*(10^-1)/2+7*(10^-2)/2;
printf('the absolute error is:%0.2f',E_A);
