//pagenumber 294 example 15
clear
colres=4.7*10^3;//ohm
beta1=150;
r1=12*10^3;//ohm
vcc=15;//volt
re=1.2*10^3;//ohm
rac=colres*r1/(colres+r1);
r=2*10^3;//ohm
//voltage gain
volgai=beta1*rac/r;
disp("voltage gain   =   "+string((volgai)));
r1=75*10^3;//ohm
r2=7.5*10^3;//ohm
//input impedance
zin=(r1*r2)/(r1+r2);
zin=zin*r/(zin+r);
disp("input impedance   =   "+string((zin)));
//coordinates
vb=vcc*r2/(r1+r2);
ie=vb/re;
vce=vcc-((colres+re)*(ie));
disp("coordinates ic   =   "+string((ie))+"ampere vce   =  "+string((vce))+"volt");
