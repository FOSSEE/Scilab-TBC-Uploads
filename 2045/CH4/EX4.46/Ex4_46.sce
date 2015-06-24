//pagenumber 228 example 46
clear
vb=0.8;//volt
beta1=100;
vce=0.2;//volt
vcc=10;//volt
rb=200*10^3;//ohm
//collector resistance
ib=(5-0.7)/rb;
colres=(vcc-vce)/(beta1*ib);
disp("min collector resistance   =   "+string((colres))+"ohm");
