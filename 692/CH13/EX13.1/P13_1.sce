//Example 13.1
//Upsampling Operation
clear;
clc;
clf();
a=gca();
figure(0);
n=[0:0.1:4.9];
a.x_location="origin";
x=sin(%pi*n);
plot2d3(n,x,2);
xtitle('The sine wave','n','sin(x)');
plot(n,x,'r.');
//Up sampling
//Up sampling value - user input
figure(1);
L=input(" The up sampling value  ");

a.x_location="origin";
x1=sin(%pi*n/L);
plot2d3(n,x1,5);
plot(n,x1,'r.');
xtitle('The sine wave','n','sin(x/L)');
