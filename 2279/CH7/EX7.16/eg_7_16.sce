//Discrete Time Fourier Transform of discrete sequence
//x[n]= (a^n).u[n], |a|<1
clear;
clc;
close;
a1 = 0.5;
max_limit = 10;
for n = 0:max_limit-1
  x1(n+1) = (a1^n);
end
n = 0:max_limit-1;
Wmax = 2*%pi;       
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
x1 = x1';
XW1 = x1* exp(-sqrt(-1)*n'*W);
XW1_Mag = abs(XW1);
W = [-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
XW1_Mag = [mtlb_fliplr(XW1_Mag), XW1_Mag(2:1001)];
[XW1_Phase,db] = phasemag(XW1);
XW1_Phase = [-mtlb_fliplr(XW1_Phase),XW1_Phase(2:1001)];
subplot(3,1,1);
plot2d3('gnn',n,x1);
xtitle('Discrete Time Sequence x[n]')
subplot(3,1,2);
plot2d(W,XW1_Mag);
title('Magnitude Response abs(X(jW))')
subplot(3,1,3);
plot2d(W,XW1_Phase);
title('Phase Response <(X(jW))')

