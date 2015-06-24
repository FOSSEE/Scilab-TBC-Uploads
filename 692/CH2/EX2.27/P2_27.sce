//EXAMPLE 2.27, convolution of an exponential sequence
clear;
clc;
n=0:.5:5
c=0.5;
b=0.4;
clf();
figure(0);
a=gca();
a.x_location="origin";
x = c^n;
subplot(2,2,1);
plot2d3(n,x,2);
plot(n,x,'.r');
xtitle('','n','x');
h = b^n ;
subplot(2,2,2);
plot2d3(n,h,2)
plot(n,h,'.r')
xtitle('','n','h');
N=0:.5:10;
y = convol (x , h ); 
subplot(2,2,3);
plot2d3(N,y,2)
plot(N,y,'.r')
xtitle('convol(x,h)' ,'n','y');
disp(y,'Convolution of the two exponential sequences is =')