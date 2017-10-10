//Example 5.8
//Root locus for noncollocated case.

xdel(winsid())//close all graphics Windows
clear;
clc;

//------------------------------------------------------------------
//System transfer function with controller 

s=poly(0,'s');
NumD=(s+1);
DenD=(s+12);
sysD=NumD/DenD;

NumG=1
DenG=s^2*((s+0.1)^2+(6.6)^2)

sysG=NumG/DenG;

NumL=NumD*NumG;
DenL=DenD*DenG;

sysL=NumL/DenL;

zr=roots(NumL);
pl=roots(DenL);

//------------------------------------------------------------------
//Angle of departure.
//Find angle of departure from pole at phi1= - 0.1 + 6.6i
//(real poles don't have angle of departure,
//they move along real axis only) 

//psi1=angle[(Departing pole)- (zero at - 1]
[Mpsi1, psi1] = polar(pl(2)-zr(1)) 
psi1=real(psi1)*180/%pi;           //angle in degree

//phi2=angle[(Departing pole)- (pole at 0)]
[Mphi2, phi2] = polar(pl(2)-pl(4)) 
phi2=real(phi2)*180/%pi;           //angle in degree

//phi3 is same as phi2, as pole is repeated at 0.
phi3=phi2;                         

//phi4=angle[(Departing pole)-(pole at - 0.1 - 6.6i )]
[Mphi4, phi4] = polar(pl(2)-pl(3)) 
phi4=real(phi4)*180/%pi;           //angle in degree

//phi5=angle[(Departing pole)- (pole at - 12 )]
[Mphi5, phi5] = polar(pl(2)-pl(1)) 
phi5=real(phi5)*180/%pi;           //angle in degree

//Therefore angle of departure phi1 at - 0.1 + 6.6i is
//phi1 = 180 + sum(angle to zeros) - sum(angle to poles)

phi1 = 180 + sum(psi1) - sum(phi2+phi3+phi4+phi5)

//angle contributions in figure 
figure(0)
plzr(sysL)
xset('font size',1.5)
xarrows([real(pl(1));real(pl(2))],[imag(pl(1));imag(pl(2))],0,2)
xarrows([real(pl(1)); -10],[0;0],0,2)
xarc(-13,1,2,2,0,phi5*64)
xstring(-11,0.05,"$\phi_5$")

xarrows([real(zr(1));real(pl(2))],[imag(zr(1));imag(pl(2))],0,6)
xarrows([real(zr(1)); -0.3],[0;0],0,6)
xarc(-2,1,2,2,0,psi1*64)
xstring(-0.7,1,"$\psi_1$")

xarrows([real(pl(4));real(pl(2))],[imag(pl(4));imag(pl(2))],0,5)
xarrows([real(pl(4)); 1],[0;0],0,5)
xarc(-1,1,2,2,0,phi2*64)
xstring(0.8,0.5,"$\phi_2,\,\phi_3$")

xarrows([real(pl(3));real(pl(2))],[imag(pl(3));imag(pl(2))],0,17)
xarrows([real(pl(3)); 2],[imag(pl(3));imag(pl(3))],0,17)
xarc(-1.1,-5.6,2,2,0,phi4*64)
xstring(0.8,-5.5,"$\phi_4$")

xstring(0.3,6.5,"$\phi_1$")

exec .\fig_settings.sci; //custom script for setting figure properties
title(['Figure to compute a departure angle for',...
'$L(s)=\frac{s+1}{s+12}\frac{1}{s^2[(s+0.1)^2+6.6^2]}$'],...
'fontsize',3)
zoom_rect([-15 -8 5 8])
h=legend('');
h.visible = "off"

//------------------------------------------------------------------
//Root locus of system transfer function with controller
figure(1)
evans(sysL)
//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title(['Root locus for','$L(s)=\frac{s+1}{s+12}\frac{1}...
{s^2[(s+0.1)^2+6.6^2]}$'],'fontsize',3)
zoom_rect([-15 -8 5 8])
h=legend('');
h.visible = "off"

//------------------------------------------------------------------
