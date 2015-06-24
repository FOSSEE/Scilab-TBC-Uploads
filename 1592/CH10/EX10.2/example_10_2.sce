//Scilab Code for Example 10.2 of Signals and systems by
//P.Ramakrishna Rao
//Cross Correlation
clear;
clc;
x=[4,-2,2,0,4];
y=[0,3,0,-3,6];
//computation of cross correlation sequence;
n1 = max(size(y))-1;
n2 = max(size(x))-1;
r = xcorr(x,y,n1);
n=-4:4;
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3(n,r,-9);
title('rxy_cross-correlation');
