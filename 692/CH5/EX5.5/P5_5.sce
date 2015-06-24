//EXAMPLE 5.5
//DFT computation
clc;
clear;

N = 16 ;
r = 3 ;
n = 0:N-1;
x = cos(2*%pi*r*n/N)
X = fft(x,-1)//DFT of the sequence
clf();
a = gca();
plot2d3(n,X,2);
plot(n,X,'r.')
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 3;
xtitle('DFT','k','X');
X = disp(real(X),'  X = ');
