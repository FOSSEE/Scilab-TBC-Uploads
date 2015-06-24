//Scilab Code for Example 10.4 of Signals and systems by
//P.Ramakrishna Rao
//Auto Correlation
clear;
clc;
x=[-1,1,-1];
//computation of auto correlation sequence;
r = xcorr(x);
n=-2:2;
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3(n,r,-9);
title('rxx_auto-correlation');
