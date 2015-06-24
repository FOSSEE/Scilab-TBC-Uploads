//example 17
clear
beta1=25;
colres=2.5*10^3;//ohm
vcc=10;//volt
vce=-5;//volt
ic=-(vcc+vce)/colres;
ib=ic/beta1;
rb=vce/ib;
stability=(1+beta1)/((1+beta1)*((colres)/(colres+rb)));
disp("base resistance   =   "+string((rb))+"ohm");//correction in book
disp("stability   =   "+string((stability)));



