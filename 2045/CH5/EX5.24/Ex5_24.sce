//pagenumber 303 example 24
clear
vb=0.6;//volt
beta1=100;
ic=1*10^-3;//ampere
vce=2.5;//volt
re=300;//ohm
vcc=5;//volt
ib=ic/beta1;
ie=ic+ib;
ve=ie*re;
vce=vce+ve;
r3=(vcc-vce)/ic;
vb=ve+vb;
r1=(vcc-vb)/(vb/(10*10^3)+(ib));
disp("resistance r1   =   "+string((r1))+"ohm");
disp("resistance r3   =   "+string((r3))+"ohm");


