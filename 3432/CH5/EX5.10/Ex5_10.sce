//Example 5.10
//Design using Lead compensator.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its root locus 

s=poly(0,'s');

NumG=1;
DenG=s*(s+1);
NumD=(s+2);
DenD=(s+10);

G=NumG/DenG;
D=NumD/DenD;

L=G*D; //open loop transfer function

figure(0)
evans(L)
sgrid(0.5,7,6);

xstring(-2,4,"Damping=0.5",0,0)
xstring(-7,4,"w=7",0,0)
//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Root locus for lead design','fontsize',3)
zoom_rect([-14 -8 4 8])
h=legend('');
h.visible = "off"
//------------------------------------------------------------------
// Unit step response
//closed loop system
K=70;
sysc=K*L/(1+K*L);
sysc=syslin('c',sysc);
t=linspace(0,10,1000);
y=csim('step',t,sysc);
figure(1)
plot(t,y);
title('Step response for the system with lead compensator','fontsize',3)
xlabel('Time (sec)','fontsize',2)
ylabel('Amplitude','fontsize',2)
set(gca(),"grid",[0.3 0.3])
zoom_rect([0 0 1.8 1.4])
exec .\fig_settings.sci;

scf(0)
pl=roots(DenG*DenD+K*NumG*NumD)     //closed loop poles at K=70;
plot(real(pl),imag(pl),'ro')       //closed loop pole-locations at K=70;
xstring(-5.8,6,"K=70",0,0)
//------------------------------------------------------------------

