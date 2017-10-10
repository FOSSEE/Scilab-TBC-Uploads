//Example 7.27
// SRL estimator design for a simple pendulum

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space representation
F=[0 1; -1 0];
G=[0 1]';
H=[1 0];
J=0;

//Transfer function
sys=syslin('c',F,G,H,J)
sysGG=ss2tf(sys)

//Symmetric root locus for the inverted pendulum estimator design
//------------------------------------------------------------------
//Root locus design
evans(sysGG*sysGG)
zoom_rect([-5 -5 5 5])
f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"
//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Symmetric root locus for inverted the pendulum estimator design',...
'fontsize',3);
//------------------------------------------------------------------
//pole locations for q=365; p=-3+-j3.18
p=[-3+3.18*%i -3-3.18*%i]
sig=real(p);
omega=imag(p);
plot(sig,omega,'ro')
xstring(-4,1,["pole location at";"q=365"])
xarrows([-3.5;-3.05],[2;3.1],-1.5,1)
//------------------------------------------------------------------
