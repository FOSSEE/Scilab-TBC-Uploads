//pagenumber 288 example 6
beta1=100;
r1=1.5*10^3;//ohm
vcc=10;//volt
r=100*10^3;//ohm
vb=((vcc)/(r+10*10^3))*10*10^3;
ie=0.3/100;
ib=ie/beta1;
disp("collector current   =   "+string((ie))+"ampere");
disp("emitter current   =   "+string((ie))+"ampere");
disp("base current   =   "+string((ib))+"ampere");
