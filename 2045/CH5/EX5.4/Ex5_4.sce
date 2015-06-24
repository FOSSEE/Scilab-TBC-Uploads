//pagenumber 287 example 4
clear
ib=20*10^-6;//ampere
beta1=500;
re=10;//ohm correction in the book
r1=4.7*10^2;//ohm correction in the book
ic=ib*beta1;
voltag=ic*r1;//voltage drop at 4.7*10^3ohm
vc=(10-voltag);
rb=(vc-0.6)/ib;
disp("rb   =   "+string((rb))+"ohm");
//re included
voltag=ic*re;//voltage drop at re
vb=(0.6+voltag);
rb=(vc-vb)/ib;
disp("rb including emitter resistance   =   "+string((rb))+"ohm");




