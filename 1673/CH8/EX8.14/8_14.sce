//example 8.14
//initial-value problem
//page 322
clc;clear;close;
deff('y=f(x)','y=13*exp(x/2)-6*x-12');
s1=1.691358;s3=3.430879;
printf('the erorr in the computed values are %0.7g  %0.7g',abs(f(0.5)-s1),abs(f(1)-s3))