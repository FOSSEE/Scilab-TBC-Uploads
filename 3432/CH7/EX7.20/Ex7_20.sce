//Example 7.20
// Pole Placement as a Dominant Second-Order System

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------

clc;
clear all;

// State space representation
F=[0 2 0 0 0;-0.10 -0.35 0.1 0.1 0.75; 0 0 0 2 0;...
 0.4 0.4 -0.4 -1.4 0; 0 -0.03 0 0 -1];
G=[0 0 0 0 1]';
H=[0.5 0 0.5 0 0]; //Tape position at the head
Ht=[-0.2 -0.2 0.2 0.2 0]; //Tension output
J=0;
n=sqrt(length(F))
// Desired poles
Pc=[-0.707+0.707*%i -0.707-0.707*%i -4 -4 -4]/1.5;
//------------------------------------------------------------------
// State feedback gain matrix via LQR (riccati equation)
Q = eye(5,5);
R =1
// Riccati equation
P=riccati(F, G*inv(R)*G', Q, 'c')
K1=inv(R)*G'*P
//------------------------------------------------------------------
// State feedback gain matrix via pole-placement
exec('./acker_dk.sci', -1);
K2=acker_dk(F,G,Pc);
disp(K2,'K2=',"Gain by ackermans formula" );
//------------------------------------------------------------------
Ntilde1=-inv(H*inv(F-G*K1)*G); //input gain for LQR feedback gain.
Ntilde2=-inv(H*inv(F-G*K2)*G); //input gain for Ackerman's feedback gain.

syscl1=syslin('c',(F-G*K1),G*Ntilde1,H,J); //closed loop system with K1
syscl2=syslin('c',(F-G*K2),G*Ntilde2,H,J); //closed loop system with K2

t=0:0.1:12;
[y1 x1]=csim('step',t,syscl1); //response of position head with K1
[y2 x2]=csim('step',t,syscl2); //response of position head with K2

//plot of a position of read write head
plot(t,y1,"m-."); //Design via LQR
plot(t,y2,2); //Design via Ackerman's Formula

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Step response of tape servomotor designs','fontsize',3);
xlabel('Time t (sec.)','fontsize',2);
ylabel('Tape Posotion','fontsize',2);

xstring(2.5,1.1,"LQR")
xarrows([3;4],[1.1;0.95],-1,1)
xstring(5,0.7,["Dominant";"second order"])
xarrows([5;4.2],[0.8;0.9],-1.5,1)
//------------------------------------------------------------------

//response as a tape tension
yt1=Ht*x1;
yt2=Ht*x2;

figure(1)
plot(t,yt1,"m-."); //Design via LQR
plot(t,yt2,2); //Design via Ackerman's Formula

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Tension plots for tape servomotor step responses','fontsize',3);
xlabel('Time t (sec.)','fontsize',2);
ylabel('Tape Tension','fontsize',2);

xstring(3.5,0,"LQR")
xarrows([3.7;4.7],[0;0],-1)
xstring(6.1,-0.015,["Dominant";"second order"])
xarrows([6;6],[-0.013;-0.002],-1)
//------------------------------------------------------------------
