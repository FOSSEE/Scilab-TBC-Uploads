//Example 7.19
//Reference input to Type-1 control system: DC Motor

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------

//Location of system Zero
z0=2;

// State space representation
F=[0 1;0 -1];
G=[0 1]';
H=[1 0]; 
J=0;
n=sqrt(length(F)); //order of the system

//computing state feedback matrix to place poles at assumed location [-1 -2]
exec('./acker_dk.sci', -1);
K=acker_dk(F,G,[-1, -2]); //assume pd=[-1 -2]
//------------------------------------------------------------------
//augmented matrix for tracking the reference
A=[F G;H J];
N=A\[zeros(1,n) 1]';
Nx=N(1:n);
Nu=N(n+1);
disp(Nx,"Nx",Nu,"Nu")

//feedforward gain (input weight)
Ntilde=Nu+K*Nx;
disp(Ntilde,"N_tilde","Input gain: N_tilde =Nu+K Nx")
//------------------------------------------------------------------
// Verify if ||y-r|| -> 0;

syscl=syslin('c',(F-G*K),G*Ntilde,H,J); //closed loop system

t=0:0.1:10;
r=ones(1,length(t));//reference input
[y x]=csim('step',t,syscl); //closed loop response

e=sqrt((r-y).^2) //norm of error
plot(t,y);
plot(t,r,'m:'); //reference input
plot(t,e,'r-.'); //norm of error
xset('font size',3);
xstring(3,0.83,"y")
xstring(2,1,"r")
xstring(3,0.1,"$\|e\|$")
//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Step response of undamped oscillator to reference input','fontsize',3);
xlabel('Time t (sec.)','fontsize',2);
ylabel('Amplitude','fontsize',2);
zoom_rect([0 -0.1 10 1.1])
//------------------------------------------------------------------
