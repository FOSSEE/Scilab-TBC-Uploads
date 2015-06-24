//Scilab Code for Example 5.1 of Signals and systems by
//P.Ramakrishna Rao
//Discrete Time Fourier Transform of
//x[n]= (a^abs(n))  0<a<1
clear;
clc;
close;
// DTS Signal
a = 0.5;     //0<a<1
max_limit = 10;
n = -max_limit+1:max_limit-1;
x = a^abs(n);
// Discrete-time Fourier Transform
Wmax = 2*%pi;      
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
XW = x* exp(-sqrt(-1)*n'*W);
XW_Mag = real(XW);
W = [-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:1001)];
a = gca();
a.y_location ="origin";
a.x_location ="origin";  
plot2d3('gnn',n,x);
xtitle('Discrete Time Sequence x[n] for a>0')
figure(1);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d(W,XW_Mag);
title('Discrete Time Fourier Transform X(exp(jW))')
