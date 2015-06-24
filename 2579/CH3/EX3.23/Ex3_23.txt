//Ex:3.23
clc;
clear;
close;
n=80;
// sinx=y/(nd)
// sinx=y/(n*y/2)=2/n
sinx=2/n;
x=asin(sinx)*(180/%pi);// in degree
dx=2*x;// the first nulls beam width in degree
printf("The first nulls beam width = %f degree",dx);
