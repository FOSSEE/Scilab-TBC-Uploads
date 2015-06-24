//pagenumber 307 example 29
clear
beta1=500;
ib=20*10^-6;//ampere
re=100;//ohm
ic=beta1*ib;
vc=ic*0.47*10^3;//voltage drop across collector resistance
v1=(10-vc);
vb=v1-0.6;
rb=vc/ib;
disp("base resistance   =   "+string((rb))+"ohm");
ve=re*ic;
disp("base resistance with re");
b=0.6+0.1;
rb=(v1-b)/ib;
disp("base resistance   =   "+string((rb))+"ohm");



