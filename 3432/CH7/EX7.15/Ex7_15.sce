//Example 7.15
//Control law for a pendulum.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Pendulum state model;
w0=1;

F=[0 1;-w0^2 0];
G=[0 1]';
H=eye(2,2); //representing x1 and x2 states as outputs
J=[0 0]';

sys=syslin('c',F,G,H,J); //open loop system

x0=[1 0]' //initial condition 
t=0:0.2:7;
y=csim('impulse',t,sys); //open loop response
//------------------------------------------------------------------

//simulation for closed loop system
x0=[1 0]' //initial condition 

//control law u=-Kx;
K=[3*w0^2 4*w0];
syscl=syslin('c',(F-G*K),G,H,J); //closed loop system


t=0:0.1:7;
u=zeros(1,length(t));
[x z]=csim(u,t,syscl,x0); //closed loop response
plot(t',x');

u=-K*x;
plot(t',u'/4,'r--'); //control law u plot (scaled to 1/4 in figure);
legend("x1","x2","u/4")

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Impulse response of undamped oscillator with full-state...
 feedback(w0=1)','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)
//------------------------------------------------------------------
