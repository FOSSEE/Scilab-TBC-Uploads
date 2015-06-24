//Example 3.31
clc ;
clear;
R=10^3;
C=10^-3;
A=1/(R*C);
Dt=0.005;
t=0:Dt:10;
xt=A*exp(-A*t);
Wmax=2*%pi*1;
K=4;
k=0:(K/1000):K;
W=k*Wmax/K;
XW=xt*exp(-sqrt(-1)*t'*W)*Dt;
XW_Mag=abs(XW);
W=[-mtlb_fliplr(W),W(2:1001)];
XW_Mag=[mtlb_fliplr(XW_Mag),XW_Mag(2:1001)];
[XW_Phase,db]=phasemag(XW);
XW_Phase=[-mtlb_fliplr(XW_Phase),XW_Phase(2:1001)];
figure
a=gca();
a.y_location="origin";
plot(t,xt);
xlabel('t in sec.');
ylabel('x(t)');
title('Continuous Time Signal');
figure
subplot(2,1,1);
a=gca();
a.y_location="origin";
plot(W,XW_Mag);
xlabel('Frequency in Radians/Seconds>W');
ylabel('abs(X(jW))');
title('Magnitude Response (CTFT)');
subplot(2,1,2);
a=gca();
a.y_location="origin";
a.x_location="origin";
plot(W,XW_Phase*%pi/180) ;
xlabel(' Frequency in Radians/Seconds􀀀􀀀􀀀> W' );
ylabel('<X(jW)')
title('Phase Response (CTFT) in Radians');