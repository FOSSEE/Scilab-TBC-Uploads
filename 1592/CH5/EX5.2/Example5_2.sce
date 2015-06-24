//Scilab Code for Example 5.2of Signals and systems by
//P.Ramakrishna Rao
//Discrete Time Fourier Transform of
//x[n]= 1 , 0=<n<=3
clear;
clc;
close;
// DTS Signal
N1 = 3;
n = 0:N1;
x = ones(1,length(n));
// Discrete-time Fourier Transform
Wmax = 2*%pi;       
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
XW = x* exp(-sqrt(-1)*n'*W);
XW_Mag = real(XW);
[XW_Phase,db] = phasemag(XW);
W = [-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:1001)];
XW_Phase = [-mtlb_fliplr(XW_Phase),XW_Phase(2:1001)];
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3('gnn',n,x);
xtitle('Discrete Time Sequence x[n]')
figure(1);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d(W,abs(XW_Mag));
title('Discrete Time Fourier Transform X(exp(jW))')
figure(2);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d(W,XW_Phase);
title('Phase Response <(X(jW))')
