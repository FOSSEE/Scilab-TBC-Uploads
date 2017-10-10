//Example 5.9
//Root locus for the system having complex multiple roots.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function

s=poly(0,'s');

NumL=1;
DenL=s*(s+2)*[(s+1)^2+4];

L=NumL/DenL;

zr=roots(NumL);
pl=roots(DenL);

//------------------------------------------------------------------
//Angle of departure.
//Find angle of departure from pole at phi1= - 1 + 2i
//(real poles don't have angle of departure,
// they move along real axis only) 

//phi2=angle[(Departing pole)- (pole at 0)]
[Mphi1, phi1] = polar(pl(1)-pl(4)) 
phi1=real(phi1)*180/%pi;           //angle in degree

//phi2=angle[(Departing pole)- (pole at -2)]
[Mphi2, phi2] = polar(pl(1)-pl(3)) 
phi2=real(phi2)*180/%pi;           //angle in degree

//phi2=angle[(Departing pole)- (pole at - 1 - 2i)]
[Mphi4, phi4] = polar(pl(1)-pl(2))
phi4=real(phi4)*180/%pi;           //angle in degree

//Therefore angle of departure phi1 at - 1 + 2i is
//phi3 = 180 + sum(angle to zeros) - sum(angle to poles)

phi3 = 180 - sum(phi1+phi2+phi4)

//angle contributions in figure 
figure(0)
plzr(L)
xset('font size',1.5)
xarrows([real(pl(4));real(pl(1))],[imag(pl(4));imag(pl(1))],0,2)
xarrows([real(pl(4)); 1],[0;0],0,2)
xarc(-0.5,0.5,1,1,0,phi1*64)
xstring(0.5,0.25,"$\phi_1$")

xarrows([real(pl(3));real(pl(1))],[imag(pl(3));imag(pl(1))],0,5)
xarrows([real(pl(3)); -1.3],[0;0],0,5)
xarc(-2.5,0.5,1,1,0,phi2*64)
xstring(-1.5,0.25,"$\phi_2$")

xarrows([real(pl(2));real(pl(1))],[imag(pl(2));imag(pl(1))],0,17)
xarrows([real(pl(2)); -0.3],[-2;-2],0,17)
xarc(-1.5,-1.5,1,1,0,phi4*64)
xstring(-0.5,-1.7,"$\phi_4$")

xstring(-0.8,2,"$\phi_1$")

exec .\fig_settings.sci; //custom script for setting figure properties
title(['Figure to computing a departure angle for',...
'$L(s)=\frac{1}{s(s+2)[(s+1)^2+4]}$'],'fontsize',3)
zoom_rect([-4 -3 4 3])
h=legend('');
h.visible = "off"
//------------------------------------------------------------------
//Root locus of system transfer function with controller
figure(1)
evans(L)
//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title(['Root locus for','$L(s)=\frac{1}{s(s+2)[(s+1)^2+4]}$']...
,'fontsize',3)
zoom_rect([-4 -3 4 3])
h=legend('');
h.visible = "off"
//------------------------------------------------------------------
