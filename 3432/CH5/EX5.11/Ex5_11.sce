//Example 5.11
//A second  Lead compensation Design. 

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its root locus 

s=poly(0,'s');

NumG=1;
DenG=s*(s+1);
NumD=(s+5.4);
DenD=(s+20);

Gs=NumG/DenG;
Ds=NumD/DenD;

Ls=Gs*Ds;   //open loop transfer function

zr=roots(NumD*NumG); //open loop system zeros
pl=roots(DenD*DenG); //open loop system poles
pd=-3.5+3.5*sqrt(3)*%i; //desired pole

//Construction for placing a specific point on the root locus.
figure(0)
plzr(Ls)
plot(real(pd),imag(pd),'ro')
xarrows([real(pl(1));real(pd)],[imag(pl(1));imag(pd)],0,2)
xarrows([real(pl(2));real(pd)],[imag(pl(2));imag(pd)],0,2)
xarrows([real(pl(3));real(pd)],[imag(pl(3));imag(pd)],0,2)
xarrows([real(zr);real(pd)],[imag(zr);imag(pd)],0,6)
xarrows([real(zr);-3],[0;0],0,6)
xarc(-6.4,1,2,2,0,72.6*64)
xset('font size',1.5);
xstring(-4.7,0.5,"$\psi$")
exec .\fig_settings.sci; //custom script for setting figure properties
title('Construction for placing a specific point on the root locus',...
'fontsize',3)
h=legend('');
h.visible = "off"
//------------------------------------------------------------------
//Root locus of system transfer function with controller
figure(1)
evans(Ls)
sgrid(0.5,7,6)
//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title(['Root locus for','$ L(s)=\frac {s+5.4}{s(s+1)(s+20)}$'],...
'fontsize',3)
zoom_rect([-20 -8 5 8])
h=legend('');
h.visible = "off"
//------------------------------------------------------------------
// Unit step response
//closed loop system

K=127;  // from root locus gain  is computed 
sysc=K*Ls/(1+K*Ls)
sysc=syslin('c',sysc);
t=linspace(0,10,1000);
y=csim('step',t,sysc);
figure(2)
plot(t,y);
exec .\fig_settings.sci; //custom script for setting figure properties
title(['Step response for K=127', 'and',...
'$ L(s)=\frac {s+5.4}{s(s+1)(s+20)}$']...
,'fontsize',3)
xlabel('Time (sec)','fontsize',2)
ylabel('Amplitude','fontsize',2)
zoom_rect([0 0 1.8 1.4])

pl=roots(DenG*DenD+K*NumG*NumD) //closed loop poles at K=127;
scf(1)
plot(real(pl),imag(pl),'ro') //closed loop pole-locations at K=127;
//------------------------------------------------------------------

