//page number 201 example 1
clear
alpha=0.98;
vbe=0.7;//base emitter voltage volt
ie=-4*10^-3;//emitter current
vc=12;//colector voltage volt
colr=3.3*10^3;//ohms
colCurrent=ie*(-alpha);
baseCurrent=0.02*ie;
vbn=vbe+(-4*10^-3*100);
i2=-vbn/(10*10^3);
i1=-(baseCurrent+i2);
vcn=(vc-((colCurrent+i1)*colr));
v1=vcn-0.9;
r1=v1/i1;
disp("r1   =   "+string(abs(r1))+"ohm");



