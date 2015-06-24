// Exa 2.26
clc;
clear;
close;
// Given data
x1= 1.570;
x2= 1.597;
x3= 1.591;
x4= 1.562;
x5= 1.577;
x6= 1.580;
x7= 1.564;
x8= 1.586;
x9= 1.550;
x10=1.575;
n=10;
// (i)
x_bar= (x1+x2+x3+x4+x5+x6+x7+x8+x9+x10)/10;
disp(x_bar,"Arithmetic mean in gramme")
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
D= (abs(d1)+abs(d2)+abs(d3)+abs(d4)+abs(d5)+abs(d6)+abs(d7)+abs(d8)+abs(d9)+abs(d10))/n;// in gramme
disp(D,"Average deviation in gramme")

// (iii)
sigma= sqrt((d1^2+d2^2+d3^2+d4^2+d5^2+d6^2+d7^2+d8^2+d9^2+d10^2)/(n-1));// in gramme
disp(sigma,"Standard deviation in gramme");

// (iv)
V= sigma^2;// variance in gramme^2
disp(V,"Variance in gramme^2");

// (v)
r= 0.6745*sigma;// in gramme
disp(r,"Probable error gramme")

// (vi)
rm= r/sqrt(n-1);// in gramme
disp(rm,"Probable error of mean in gramme")
