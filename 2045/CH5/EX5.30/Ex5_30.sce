//pagenumber 308 example 30
clear
beta1=100;
re=100;//ohm
vcc=10;//volt
colres=1.5*10^3;//ohm
r=100*10^3;//ohm
r1=10*10^3;//ohm
vb=vcc*r1/(r1+r);
ie=0.3/re;
ib=ie/beta1;
disp("collector current   =   "+string((ie))+"ampere");
disp("base current   =   "+string((ib))+"ampere");
disp("emitter current   =   "+string((ie))+"ampere");

