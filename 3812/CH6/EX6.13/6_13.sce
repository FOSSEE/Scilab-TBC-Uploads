//Example 6_13:
//Discrete Time Fourier Transform of discrete sequence x[n]=(n)*(a^n).u[n], a>0 and a<0
clear;
clc;
close;
//DTS Signal
a1=0.5;
a2=-0.5;
max_limit=10;
for n=0:max_limit-1
x1(n+1)=(n)*(a1^n);
x2(n+1)=(n)*(a2^n);
end
n=0:max_limit-1;
Wmax=2*%pi;
K=4;
k=0:(K/1000):K;
W=k*Wmax/K;
x1=x1';
x2=x2';
XW1=x1*exp(-sqrt(-1)*n'*W);
XW2=x2*exp(-sqrt(-1)*n'*W);
XW1_Mag=abs(XW1);
XW2_Mag=abs(XW2);
W=[-mtlb_fliplr(W),W(2:1001)];
XW1_Mag = [mtlb_fliplr(XW1_Mag),XW1_Mag(2:1001)];
XW2_Mag = [mtlb_fliplr(XW2_Mag), XW2_Mag(2:1001)];
[XW1_Phase,db] = phasemag(XW1);
[XW2_Phase,db] = phasemag(XW2);
XW1_Phase = [-mtlb_fliplr(XW1_Phase),XW1_Phase(2:1001)];
XW2_Phase = [-mtlb_fliplr(XW2_Phase),XW2_Phase(2:1001)];
figure
subplot(3,1,1);
plot2d3('gnn',n,x1);
xtitle('Discrete Time Sequence x[n] for a>0')
subplot(3,1,2);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d(W,XW1_Mag);
title('Magnitude Response abs(X(jW))')
subplot(3,1,3);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d(W,XW1_Phase);
title('Phase Response <(X(jW))')
//plot for a<0
figure
subplot(3,1,1);
plot2d3('gnn',n,x2);
xtitle('Discrete Time Sequence x[n] for a>0')
subplot(3,1,2);
