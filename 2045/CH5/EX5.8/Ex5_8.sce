//pagenumber 289 example 8
clear
rb=5*10^3;//ohm
vcc=20;//volt
r=10*10^3;//ohm
colres=5*10^3;//ohm
vb=vcc*r/(r+r);
beta1=50;
v1=0.6;//volt
ib=(vb-v1)/(1+beta1*colres);
ic=beta1*ib;
vc=vcc-ic*1*10^3;
vce=vc-rb*(ic+ib);
disp("emitter current   =   "+string((ic+ib))+"ampere");
disp("vc   =   "+string((vc))+"volt");
disp("collector emitter voltage   =   "+string((vce))+"volt");



