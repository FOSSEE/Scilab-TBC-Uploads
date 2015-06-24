//pagenumber 205 example 6
clear
//given
vbe=0.8;//volt
beta1=100;
vce=0.2;//volt
rb=200*10^3;//ohm
bascur=(6-vbe)/rb;
colres=(10-vce)/(beta1*bascur);
disp("min resistance   =   "+string((colres))+"ohm");

