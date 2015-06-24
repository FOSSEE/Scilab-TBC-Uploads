//pagenumber 223 example 39
clear
vcc=16;//volt
colres=3*10^3;//ohm
re=2*10^3;//ohm
r1=56*10^3;//ohm
r2=20*10^3;//ohm
alpha1=0.985;
vb=0.3;//volt
//coordinates
beta1=alpha1/(1-alpha1);
v1=vcc*r2/(r1+r2);
rb=r2/(r1+r2);
ic=(v1-vb)/((rb/beta1)+(re/beta1)+re);
disp("new point");
disp("vce   =   "+string((v1))+" volt");
disp("ic   =   "+string((ic))+" ampere");


