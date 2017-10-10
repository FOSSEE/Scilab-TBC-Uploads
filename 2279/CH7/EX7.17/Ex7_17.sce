//Discrete Time Fourier Transform of discrete sequence
//x[n]= (a^n).u[-n], |a|>1
clear;
clc;
close;
a1 = 3;
min_limit = -20;
n = min_limit:0
for i=1:length(n)
  x1(i) = (a1^n(i));
end
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
xtitle('Discrete Time Sequence x[n]','n','x[n]')
subplot(3,1,2);
plot2d(W,XW1_Mag);
xtitle('Magnitude Response abs(X(jW))','w','|X(jW)|')
subplot(3,1,3);
plot2d(W,XW1_Phase);
xtitle('Phase Response <(X(jW))','w','<(X(jW))')

