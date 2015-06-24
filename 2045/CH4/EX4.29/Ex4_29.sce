//example 29
clear
r=40*10^3;//ohm
r1=5*10^3;//ohm
colres=r1;
beta1=50;
em1res=1*10^3;//ohm
vcc=12;//volt
rth=r*r1/(r+r1);
v1=r1*vcc/(r1+r);
bascur=(v1-0.3)/(rth+(beta1*em1res));
colcur=beta1*bascur;
vce=vcc-(colres+em1res)*colcur;
disp("collector current   =   "+string((colcur))+"ampere");
disp("collector emitter voltage   =   "+string((vce))+"volt");





