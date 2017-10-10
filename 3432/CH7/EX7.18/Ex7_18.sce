//Example 7.18
//Introducing the reference input.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Pendulum state model;
w0=1;

F=[0 1;-w0^2 0];
G=[0 1]';
H=[1 0]; //representing x1 and x2 states as outputs
J=0;
n=sqrt(length(F));

//computing state feedback matrix to place poles at [-2 -2]
exec('./acker_dk.sci', -1);
K=acker_dk(F,G,[-2, -2]);
//------------------------------------------------------------------
//augmented matrix for tracking the reference
A=[F G;H J];
N=A\[zeros(1,n) 1]';
Nx=N(1:n);
Nu=N(n+1);

//feedforward gain (input weight)
Ntilde=Nu+K*Nx;

//------------------------------------
//Alternately, it can be computed as /
Ntilde1=-inv(H*inv(F-G*K)*G); //     /
//------------------------------------

//Closed loop system and step response
syscl=syslin('c',(F-G*K),G*Ntilde,H,J); //closed loop system

t=0:0.1:7;
[y x]=csim('step',t,syscl); //closed loop response
plot(t',x');

u=-K*x+Ntilde;
plot(t',u'/4,'r--'); //control law u plot (scaled to 1/4 in figure);
legend("x1","x2","u/4");
xset('font size',3);
xstring(5,0.93,"$x_{ss}$")
xstring(5,0.25,"$u_{ss}$")

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Step response of undamped oscillator to reference input',...
'fontsize',3);
xlabel('Time t (sec.)','fontsize',2);
ylabel('Amplitude','fontsize',2);

//------------------------------------------------------------------
