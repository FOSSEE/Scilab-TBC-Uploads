//Example 9.9
//Student's t-distribution
//Page No. 553
clc;clear;close;

n=4;
t=3.18;        //from table A2 in book
x=[65.3,68.2,67.7,66.4];
x_avg=(x(1)+x(2)+x(3)+x(4))/4;
sigma=1.308;
printf('\nx = %.1f +- %.2f\nx_avg = %.1f +- %.3f',x_avg,t*sigma,x_avg,t*sigma/sqrt(n));

