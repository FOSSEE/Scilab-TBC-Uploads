//Example 9.8
//Student's t-distribution
//Page No. 553
clc;clear;close;

n=9;
x_avg=17;
sigma=4;
t=2.31;        //from table A2 in book
printf('\nx = %i +- %.2f\nx_avg = %i +- %.2f',x_avg,t*sigma,x_avg,t*sigma/sqrt(n));

