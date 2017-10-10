//Example 7.25
// An estimator design for a simple pendulum

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space representation
w0=1;
F=[0 1; -w0^2 0];
G=[0 1]';
H=[1 0];
J=0;
n=sqrt(length(F));//order of the system
// Desired estimator poles
Pe=[-10*w0 -10*w0];
// Observer gain matrix for system 
Lt=ppol(F',H',Pe);
L=Lt';
disp(L,"L=" );
//------------------------------------------------------------------
//simulation for closed loop system
x0=[1 0]' //initial condition

//State feedback control law u=-Kx; (from Ex7_15)
K=[3*w0^2 4*w0];
//------------------------------------------------------------------
//Augmented plant and observer
Faug=[F-G*K, zeros(n,n); L*H, F-L*H];
Gaug=[0 0 0 0]';
Haug=[H -H];
Jaug=0;

sys_aug=syslin('c',Faug,Gaug,Haug,Jaug);
t=0:0.1:4;
u=zeros(1,length(t));
x0=[1 0 0 0]';
[x z]=csim(u,t,sys_aug,x0); //closed loop response
plot(t,z(1,:));
plot(t,z(2,:),'m');
plot(t,z(3,:),'b:');
plot(t,z(4,:),'m:');

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title(['Initial condition response of oscillator showing',...
'$\mathbf{x}$','and','$\hat{\mathbf{x}}$'],'fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)
legend('$x_1$','$x_2$','$\hat{x}_1$','$\hat{x}_2$')
xset('font size',2)
//------------------------------------------------------------------
