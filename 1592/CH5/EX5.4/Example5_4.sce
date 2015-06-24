//Scilab Code for Example 5.4 of Signals and systems by
//P.Ramakrishna Rao
//Discrete Time Fourier Transform of 
// X(e^j*w)=2*%pi*delta(w)
clear;
clc;
close;
N = 1;
N1 = -3*N:3*N;
xn = [zeros(1,N-1),1];
x = [1 xn xn xn xn xn xn];
ak = 1/N;
XW = 2*%pi*ak*ones(1,2*N);
Wo = 2*%pi/N;
n  = -N:N-1;
W = Wo*n;
a = gca();
a.y_location ="middle";
a.x_location ="origin";
plot2d3('gnn',W,XW,2);
poly1 = a.children(1).children(1);
poly1.thickness = 3;
xlabel('W');
title('DTFT of Periodic Impulse Train')
figure(1);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3('gnn',N1,x,2);
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
xlabel('n');
title('Periodic Impulse Train x(n)')
