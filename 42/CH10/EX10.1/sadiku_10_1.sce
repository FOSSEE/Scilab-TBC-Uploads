clear;
clc;
format('v',6);
disp('Direction of wave propagation is -ax');
w=10^8,c=3*10^8;
B=w/c;
disp(B,'Value of beta=');
T=2*%pi/w;
disp(T/2*10^9,'Time taken to travel half of wave length in nS= ');
t=0
x=-2*%pi:%pi/16:2*%pi;
Ey=50*cos(10^8 *t +B*x);
subplot(2,2,1)
plot(x,Ey);
t=T/4;
Ey=50*cos(10^8 *t +B*x);
subplot(2,2,2)
plot(x,Ey);
t=T/2;
Ey=50*cos(10^8 *t +B*x);
subplot(2,2,3)
plot(x,Ey);