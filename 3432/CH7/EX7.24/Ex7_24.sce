//Example 7.24
// LQR Design for a Tape Drive

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space model for a Tape Drive
F=[0 2 0 0 0;-0.10 -0.35 0.1 0.1 0.75; 0 0 0 2 0; 0.4 0.4 -0.4 -1.4 0; 0 -0.03 0 0 -1];
G=[0 0 0 0 1]';
H3=[0.5 0 0.5 0 0];
//------------------------------------------------------------------
// State feedback gain matrix via LQR (riccati equation)
// (a) Continuous LQR for rho=1
rho=1;
R1=1;
Q1=rho*H3'*H3;
// Riccati equation
P1=riccati(F, G*inv(R1)*G', Q1, 'c')
K1=inv(R1)*G'*P1
disp(K1,'K1')
//------------------------------------------------------------------
// State feedback gain matrix via LQR (riccati equation)
// (a) Comparision in step response with rho=0.1,1,10.
rho=0.1;
R2=1;
Q2=rho*H3'*H3;
// Riccati equation
P2=riccati(F, G*inv(R2)*G', Q2, 'c')
K2=inv(R2)*G'*P2

rho=10;
R3=1;
Q3=rho*H3'*H3;
// Riccati equation
P3=riccati(F, G*inv(R3)*G', Q3, 'c')
K3=inv(R3)*G'*P3
//------------------------------------------------------------------
//input gains for step reference with rho=0.1,1,10.
Ntilde1=-inv(H3*inv(F-G*K1)*G);
Ntilde2=-inv(H3*inv(F-G*K2)*G);
Ntilde3=-inv(H3*inv(F-G*K3)*G);

//Closed loop system with rho=0.1,1,10.
syscl1=syslin('c',(F-G*K1),G*Ntilde1,H3,0);
syscl2=syslin('c',(F-G*K2),G*Ntilde2,H3,0);
syscl3=syslin('c',(F-G*K3),G*Ntilde3,H3,0);

//step response with rho=0.1,1,10.
t=0:0.1:12;
[y1 x1]=csim('step',t,syscl1); //closed loop response
[y2 x2]=csim('step',t,syscl2); //closed loop response
[y3 x3]=csim('step',t,syscl3); //closed loop response

figure,
a1=newaxes();
a1.axes_bounds=[0,0,1.0,0.5];
plot(t,y1);
plot(t,y2,'r-.');
plot(t,y3,'m:');

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('(a)Step response of step servo motor for LQR Design','fontsize',3);
xlabel('Time t (sec.)','fontsize',2);
ylabel(["Tape Position","$x_3$"],'fontsize',2);

xstring(4.1,0.85,"$\rho=1$")
xstring(5.5,0.75,"$\rho=0.1$")
xstring(2.1,1.05,"$\rho=10$")
//------------------------------------------------------------------
//Tensions for the Tape
//For tape output is Ht=[-0.2 -0.2 0.2 0.2 0];
Ht=[-0.2 -0.2 0.2 0.2 0];
H3=Ht;
//input gains can not be computed because of singularity. so set it 1;
Ntilde1=1;
Ntilde2=1;
Ntilde3=1;

//Closed loop system with rho=0.1,1,10.
syscl1=syslin('c',(F-G*K1),G*Ntilde1,H3,0);
syscl2=syslin('c',(F-G*K2),G*Ntilde2,H3,0);
syscl3=syslin('c',(F-G*K3),G*Ntilde3,H3,0);

//step response with rho=0.1,1,10.
t=0:0.1:12;
[y1 x1]=csim('step',t,syscl1); //closed loop response
[y2 x2]=csim('step',t,syscl2); //closed loop response
[y3 x3]=csim('step',t,syscl3); //closed loop response

a2=newaxes();
a2.axes_bounds=[0,0.5,1.0,0.5];
plot(t,y1);
plot(t,y2,'r-.');
plot(t,y3,'m:');

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('(b)Corresponding tension for Tape servomotor step response','fontsize',3);
xlabel('Time t (sec.)','fontsize',2);
ylabel(["Tape Tension","T"],'fontsize',2);


xstring(4.3,-0.05,"$\rho=1$")
xstring(6,-0.1,"$\rho=0.1$")
xstring(1.5,-0.03,"$\rho=10$")
//------------------------------------------------------------------
