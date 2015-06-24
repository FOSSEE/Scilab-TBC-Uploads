//DTFT of x[n]=(a)^n*u[n]
clear;
clc;close;
//DTS signal
a1=0.5;
a2=-0.5;
max_limit=10;
for n=0:max_limit-1
  x1(n+1)=(a1^n);
  x2(n+1)=(a2^n);
end
n=0:max_limit-1;
//discrete time fourier transform
wmax=2*%pi;
K=4;
k=0:(K/1000):K;
W=k*wmax/K;
x1=x1'
x2=x2'
XW1=x1*exp(%i*n'*W);
XW2=x2*exp(%i*n'*W);
XW1_Mag=abs(XW1);
XW2_Mag=abs(XW2);
W=[-mtlb_fliplr(W),W(2:1001)];//omega form
XW1_Mag=[mtlb_fliplr(XW1_Mag),XW1_Mag(2:1001)];
XW2_Mag=[mtlb_fliplr(XW2_Mag),XW2_Mag(2:1001)];
[XW1_phase,db]=phasemag(XW1);
[XW2_phase,db]=phasemag(XW2);
XW1_phase=[-mtlb_fliplr(XW1_phase),XW1_phase(2:1001)];
XW2_phase=[-mtlb_fliplr(XW2_phase),XW2_phase(2:1001)];

//plot for a>0
figure
subplot(3,1,1);
plot2d3('gnn',n,x1)
xtitle('Discrete time sequencex[n] a>0')
subplot(3,1,2);
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d3(W,XW1_Mag);
title('magnitude Response abs(exp(jw))')
subplot(3,1,3);
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d(W,XW1_phase);
title('magnitude Response abs(exp(jw))')
//plot for a<0
figure
subplot(3,1,1);
plot2d3('gnn',n,x2);
xtitle('Discrete Time sequence x[n] for a>0')
subplot(3,1,2);
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d(W,XW2_Mag);
title('Magnitude Response abs(X(jw))')
subplot(3,1,3);
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d(W,XW2_phase);
title('phase Response<(X(jw))')
