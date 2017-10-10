//input resistance hie, reverse voltage ratio hre
//forward current gain hfe, output admittance hoe
close();
clear;
clc;
Rc = 800;//ohm
Rl = Rc;
Ri = 0;
R1 = 1200;//ohm
R2 = 2700;
hre = 0;
hoe = 100*10^(-6);//s
hfe = 90;
hie = 200;
Rb = R1*R2/(R1+R2);
syms ib;
il = -(Rc/hoe)/(Rc/hoe+Rl/hoe+Rl*Rc)*hfe*ib;
Av = dbl(Rl*il/(hie*ib));
//Current gain 'Ai'
Ai = dbl(Rb/(Rb+hie)*il/ib);
mprintf('Voltage gain Av = %0.2f\nCurrent gain Ai = %0.2f',Av,Ai);