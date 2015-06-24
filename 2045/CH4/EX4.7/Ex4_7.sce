//pagenumber 206 example 7
clear
beta1=100;
colres=3*10^3;//collector resistance //ohm
rb=8*10^3;//ohm
r1=500;//ohm
voltag=5;//volt
//(1)
ib=(-voltag+0.7)/((1+beta1)*r1+(rb));
ic=beta1*ib;
vce=(-10-ic*(colres)+r1*(ib+ic));
vcb=vce+0.7;
//(2)
volmin=-0.2+abs(ib+ic)*r1;
re=-(0.7+rb*ib+voltag)/((1+(beta1))*ib);
disp("in saturation mode")
disp("vo   =   "+string((volmin))+"volt");//correction in the book
disp("emitter resistance   <   "+string((re))+"ohm");


