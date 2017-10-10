//Example 7.23
// SRL Design for an Inverted Pendulum 

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------

//Transfer function model of Inverted Pendulum.
s=poly(0,'s');

nums=-(s+2);
dens=(s^2-1)
num_s=-(-s+2);
den_s=((-s)^2-1)
G0s=syslin('c',nums/dens); //G0(s)
G0_s=syslin('c',num_s/den_s); //G0(-s)
sysGG=G0s*G0_s;
evans(sysGG)
title('Symmetric root locus for Inverted Pendulum')
zoom_rect([-3 -2 3 2])
f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Symmetric root locus for the inverted pendulum','fontsize',3);
//------------------------------------------------------------------
//Root locus design
//choose rho=1 that places pole at -1.36+-j0.606
rho=1;
p=[-1.36+0.606*%i, -1.36-0.606*%i];
sig=real(p);
omega=imag(p);
plot(sig,omega,'ro')
xstring(-1.25,0.5,["pole locations at";"$\rho=1$"])
//------------------------------------------------------------------
//pole-placement design;
Ac=[0 1;1 0];Bc=[0 -1]'; Cc=[2 1];Dc=0;
exec('./acker_dk.sci', -1);
K=acker_dk(Ac,Bc,p);
disp(K,"K=",spec(Ac-Bc*K),"Closed loop eigen values");

//input gain calculation
n=sqrt(length(Ac));
A=[Ac Bc;Cc Dc];
N=A\[zeros(1,n) 1]';
Nx=N(1:n);
Nu=N(n+1);

//feedforward gain (input gain)
Ntilde=Nu+K*Nx;

//Step respose
t=0:0.1:4.5;
syscl=syslin('c',(Ac-Bc*K),Bc*Ntilde, Cc, Dc)
[y x]=csim('step',t,syscl); //closed loop response
figure,
plot(t,y);

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Step response for inverted pendulum','fontsize',3);
xlabel('Time t (sec.)','fontsize',2);
ylabel(["Position","$x_1$"],'fontsize',2);
//------------------------------------------------------------------
