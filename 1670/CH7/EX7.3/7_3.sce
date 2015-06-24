//Example 7.3
//Richardson Extrapolation
//Page no. 233
clc;close;clear;

t=[1,1.1,1.2,1.3,1.4]
I=[8.2277,7.2428,5.9908,4.5260,2.9122]
h=0.1;
deff('y=f1(x,h1)','y=(I(x+h1)-I(x-h1))/(2*h)')
deff('y=f2(x,h1)','y=(I(x+2*h1)-I(x-2*h1))/(4*h)')
deff('y=f3(x,h1)','y=(I(x+h1)-I(x-h1))/(2*h)')
x=3;h1=1;
D0h=f1(x,h1)
printf('\nD0(h) = %g\n',D0h)
D02h=f2(x,h1)
printf('\nD0(2h) = %g\n',D02h)
I1=(4*D0h-D02h)/x
printf('\nI` (1.2) = %g',I1)