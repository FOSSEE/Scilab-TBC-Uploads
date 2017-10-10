//Example 7.21
// Symmetric root locus (SRL) for servo speed control

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Transfer function model of the given system
a=1.5;//assume
s=poly(0,'s');
nums=1;
dens=s+a;
num_s=1;
den_s=-s+a;
G0s=syslin('c',nums/dens); //G0(s)
G0_s=syslin('c',num_s/den_s); //G0(-s)

evans(G0s)
evans(G0_s)
zoom_rect([-3 -0.1 3 0.1])
f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Symmetric root locus for a first order system','fontsize',3);
//------------------------------------------------------------------
//Root locus design
//rho>0; choose rho=2
rho=2;
//optimal pole p=-sqrt(a^2+rho)
p=-sqrt(a^2+rho)
sig=real(p);
omega=imag(p);
plot(sig,omega,'ro')
xstring(-2.5,0.02,["pole location at";"$\rho=2$"])
xarrows([-2.2;-2.07],[0.02;0.002],-1.5,1)
//------------------------------------------------------------------
