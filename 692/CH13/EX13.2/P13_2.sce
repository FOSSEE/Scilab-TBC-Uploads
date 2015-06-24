//Example 13.2
//Downsampling Operation
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
//Down sampling
//Down sampling - user input
figure(1);
M=input(" The down sampling factor  ");
a.x_location="origin";
x1=sin(%pi*n*M);
plot2d3(n,x1,1);
plot(n,x1,'r.');
xtitle('The sine wave','n','sin(x*M)');
