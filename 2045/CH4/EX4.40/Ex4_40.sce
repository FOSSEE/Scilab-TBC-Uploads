//pagenumber 224 example 40
clear
vce=12;//volt
ic=2*10^-3;//ampere
vcc=24;//volt
vb=0.7;//volt
beta1=50;
colres=4.7*10^3;//ohm
//re
re=((vcc-vce)/(ic))-colres;
disp("re   =   "+string((re))+" ohm");
//r1
ib=ic/beta1;
v1=ib*3.25*10^3+vb+(ib+1.5*10^3);
r1=3.25*18*10^3/2.23;
disp("r1   =   "+string((r1))+" ohm");
//r2
r2=26.23*2.23*10^3/(18-2.3);
disp("r2   =   "+string((r2))+" ohm");

