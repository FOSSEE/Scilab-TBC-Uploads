//pagenumber 222 example 38
clear
vb=0.7;//volt
vce=7;//volt
ic=1*10^-3;//ampere
vcc=12;//volt
beta1=100;
colres=(vcc-vce)/ic;
ib=ic/beta1;
//rb
rb=(vcc-vb-ic*colres)/ib;
disp("rb   =   "+string((rb))+" ohm");
//stability
stability=(1+beta1)/(1+beta1*(colres/(colres+rb)));
disp("stability   =   "+string((stability)));
//beta=50
beta1=50;
disp("new point");
ib=(vcc-vb)/(beta1*colres+rb);
ic=beta1*ib;
disp("ic   =   "+string((ic))+" ampere");
vce=vcc-(ic*colres);
disp("vce   =   "+string((vce))+" volt");
