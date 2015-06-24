//EXAMPLE 5.2
//DFT of sinusoidal sequence
clc;
clear;

N = input("   input value of N   ");
r = input("   input r value   ") ;
n = 0:N-1;
x = cos(2*%pi*r*n/N)
X = dft(x,-1)
//X exisits only at n={r,N-r} where X = N/2
clf();
a=gca();
a.x_location = "origin";
a.y_location = 'origin';
plot2d3(n,X,2);
a.thickness=1;
plot(n,X,'r.');

xtitle('DFT','K -->','X[K] -->');
X = disp(X,'DFT of x--> ');


