//example 13
clear
colres=330;//ohm
re=0.1*10^3;//ohm
vcc=12;//volt
vce=0.2;//volt
revcur=18*10^-3//ampere
ib=0.3*10^-3;//ampere
stability=10;
beta1=100;
colres=0.330;//ohm
re=0.1*10^3;//ohm
vbe=0.2;
rb=(((1+beta1)*re)/10-((1+beta1)*re))/(1-10.1);
vb=2+ib*rb;
w=vcc/vb;
q=w-1;
r1=1.2*10^3;
r=q*1.2*10^3;
disp("r1   =   "+string((q))+"times r2");
disp("if r2 is 1200ohm");
disp("r1   =   "+string((r))+"ohm");

disp("r2   =   "+string((r1))+"ohm");
