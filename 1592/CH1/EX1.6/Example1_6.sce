//Scilab Code for Example 1.6(i) of Signals and systems by
//P.Ramakrishna Rao
//Determine whether the given signal is periodic or not
clc;
clear;

n=0:1:10;
x(n+1)=2*sin(0.8*%pi*n);
a=gca();
a.x_location="origin";
a.y_location="origin";
n=0:1:10;
plot2d3(n,x,9);
title('x(n)');
disp('ploting the signal and showing that it is periodic with period of 5');
