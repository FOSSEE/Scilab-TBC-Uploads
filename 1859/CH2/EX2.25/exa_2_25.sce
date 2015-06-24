// Exa 2.25
clc;
clear;
close;
// Given data
x1= 41.7;
x2= 42;
x3= 41.8;
x4= 42;
x5= 42.1;
x6= 41.9;
x7= 42.5;
x8= 42;
x9= 41.9;
x10=41.8;
n=10;
// (i)
x_bar= (x1+x2+x3+x4+x5+x6+x7+x8+x9+x10)/10;
disp(x_bar,"Arithmetic mean")
d1= x1-x_bar;
d2= x2-x_bar;
d3= x3-x_bar;
d4= x4-x_bar;
d5= x5-x_bar;
d6= x6-x_bar;
d7= x7-x_bar;
d8= x8-x_bar;
d9= x9-x_bar;
d10= x10-x_bar;
// (ii)
sigma= sqrt((d1^2+d2^2+d3^2+d4^2+d5^2+d6^2+d7^2+d8^2+d9^2+d10^2)/(n-1));
disp(sigma,"Standard deviation");

// (iii)
r= 0.6745*sigma;
disp(r,"Probable error of one reading")



