clc
//Chapter1: Signals
//Example1,page no12
//Given:
// CTFT
T = -4:4;;
T1 = 1; // Sampling Interval
xt = ones (1, length (T));
ak = 1/ T1;
XW = 2* %pi *ak* ones (1, length (T));
Wo = 2*%pi/T1;
W = Wo*T;
// Displaying the given function
figure
subplot(2 ,1 ,1)
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d3('gnn',T,xt,2) ;
poly1 =a.children(1).children (1) ;
poly1.thickness = 3;
xlabel ( 't ' );
title('Periodic Impulse Train ')
// displaying the fourier Transform of the given function
subplot(2 ,1 ,2)
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d3('gnn',W,XW,5) ;
poly1=a.children(1).children(1) ;
poly1.thickness =3 ;
xlabel('t');
title ( 'CTFT of Periodic Impulse Train')

mprintf('F[∂t(t)]= 2*pi/T*∑∂(w-wo)')

