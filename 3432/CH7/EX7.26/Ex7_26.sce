//Example 7.26
// A reduced order estimator design for pendulum

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

//partioned system
Faa=F(1,1); Fab=F(1,2);
Fba=F(2,1); Fbb=F(2,2);

// Desired estimator poles
Pe=[-10];
// Observer gain matrix for system 
L=ppol(Fbb',Fab',Pe);
L=L';
disp(L,"L=" );
//------------------------------------------------------------------
//simulation for closed loop system
x0=[1 0 10]' //initial condition

//State feedback control law u=-Kx; (from Ex7_15)
K=[3*w0^2 4*w0];
//------------------------------------------------------------------
//Augmented plant and observer
Faug=[F-G*K, zeros(n,1); Fab, L*Fab, Fbb-L*Fab];
Gaug=[0 0 0]';
Haug=[H 0];
J=0;

sys_aug=syslin('c',Faug,Gaug,Haug,J);
t=0:0.1:4;
u=zeros(1,length(t));
[x z]=csim(u,t,sys_aug,x0); //closed loop response
plot(t,z(1,:),'b');
plot(t,z(2,:),'r');
plot(t,z(3,:),'r--');


//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Initial condition response of the reduced order estimator','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)
legend('$x_1$','$x_2$','$\hat{x}_2$')
xset('font size',2)
//------------------------------------------------------------------
