//Example 7.31
// Reduced-Order Estimator Design for DC Servo.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------

// State space representation
//Transfer function model for DC Servo
s=poly(0,'s');
num=10;
den=s*(s+2)*(s+8);
Gs=syslin('c',num/den);
// State space representation
F=[-10 1 0;-16 0 1;0 0 0]
G=[0 0 10]';
H=[1 0 0];
J=0;
n=sqrt(length(F));
//Desired poles for the DC Servo system.
Pc=[-1.42 -1.04+2.14*%i -1.04-2.14*%i ]
// State feedback gain
K=ppol(F,G,Pc)
disp(K,'K=',"State feedback gain")

//------------------------------------------------------------------
//Estimator - error roots are at
//partioned system
Faa=F(1,1); Fab=F(1,2:3);
Fba=F(3,1); Fbb=F(2:3,2:3);
Ga=G(1);Gb=G(2:3);

Pe=[-4.24+4.24*%i, -4.24-4.24*%i]
// Observer gain matrix for system 
L=ppol(Fbb',Fab',Pe);
L=L';
disp(L,"L=" );
//------------------------------------------------------------------

//State feedback control law u=-Kx=-(K+[L*k2 0])[y xc]'; 
k1=K(1); k2=K(2:3);

//------------------------------------------------------------------
//compensator transfer function
s=poly(0,'s');
num=(-0.735+s)*(1.871+s);
den=poly([-0.990 + 6.12* %i, -0.990 - 6.12* %i] ,'s','roots')
Dcr=syslin('c',num/den);
disp(Dcr,'Dcr','compensator transfer function')
//------------------------------------------------------------------
//Root locus with reduced order compensator
evans(-Dcr*Gs)
zoom_rect([-8 -9 3 9])

f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Root locus for DC servo reduced order controller','fontsize',3);
//------------------------------------------------------------------

















