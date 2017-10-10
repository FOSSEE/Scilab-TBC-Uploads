//Example 7.22
// SRL design for satellite attitude control

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Transfer function for satellite attitude control system
s=poly(0,'s');
nums=1;
dens=s^2;
num_s=1;
den_s=(-s)^2;
G0s=syslin('c',nums/dens); //G0(s)
G0_s=syslin('c',num_s/den_s); //G0(-s)
//evans(G0s*G0_s)
evans(1/s^4)
zoom_rect([-3 -3 3 3])
f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Symmetric root locus for the satellite','fontsize',3);
//------------------------------------------------------------------
//Root locus design
//choose rho=4.07 that places pole at -1+-j
rho=4.07;
chr_eqn=(1+rho*G0s*G0_s)
p=[-1+%i, -1-%i];
sig=real(p);
omega=imag(p);
plot(sig,omega,'ro')
xstring(-2.2,0.5,["pole locations at";"$\rho=4.07$"])
//------------------------------------------------------------------
//pole-placement design;
sys=tf2ss(G0s);
exec('./acker_dk.sci', -1);
K=acker_dk(sys.A,sys.B,p);
syscl=syslin('c',(sys.A-sys.B*K),sys.B, sys.C, sys.D)
disp(spec(syscl.A),"Closed loop eigen values");
//------------------------------------------------------------------
