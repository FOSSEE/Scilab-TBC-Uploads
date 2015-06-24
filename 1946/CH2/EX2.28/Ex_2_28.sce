// Example 2.28:Core diameter
clc;
clear;
close;
n1=1.5;//Core Refractive Index
d= 0.01;// Cange in core-cladding refractive index
alpha=2;//  index profile
h=1.3;//wavelngth in micro meters
Vc=2.405*sqrt(1+2/alpha);
a=(Vc*h)/(2*%pi*n1*sqrt(2*d));
di=2*a;
disp(di,"core diameter in micro meters")
//answer is calculated wrong in the textbook

