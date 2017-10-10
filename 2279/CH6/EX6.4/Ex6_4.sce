// Continuous Time Fourier Transforms of 
// Sinusoidal waveforms 3cos(2*pi*t)
clear;
clc;
close;
// CTFT
t=-10:0.01:10;
x=3*cos(2*%pi*t);
subplot(2,1,1)
plot(t,x);
xtitle("CT signal x(t)","t","x(t)");
T1 = 2;
T = 4*T1;
Wo = 6*%pi/T;
W = [-Wo,0,Wo];
ak = (2*%pi*Wo*T1/%pi);
XW =[ak,0,ak];
subplot(2,1,2)
plot2d3('gnn',W,real(XW));
xlabel('                        W');
xtitle('CTFT of cos(Wot)','W','X(jW)')
n=-10:10;
W1=4*%pi;
W2=8*%pi;
W3=3*%pi;
T1=(2*%pi)/W1;
T2=(2*%pi)/W2;
T3=(2*%pi)/W3;
x1=3*cos(2*%pi*n*T1);
x2=3*cos(2*%pi*n*T2);
x3=3*cos(2*%pi*n*T3);
figure(1)
subplot(3,1,1)
plot2d3('gnn',n,x1);
xtitle("X(t) sampled at Ws=4*pi","n","x1[n]");
subplot(3,1,2)
plot2d3('gnn',n,x2);
xtitle("X(t) sampled at Ws=8*pi","n","x2[n]");
subplot(3,1,3)
plot2d3('gnn',n,x3);
xtitle("X(t) sampled at Ws=3*pi","n","x3[n]");
