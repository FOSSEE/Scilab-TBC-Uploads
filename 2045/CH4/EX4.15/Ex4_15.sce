//example 15
clear
vcc=26;//volt
colres=20*10^3;//ohm
re=470;//ohm
beta1=45;
vce=8;//volt
ib=(vcc-vce)/((1+beta1)*(colres+re));
ic=beta1*ib;
r1=((vcc-colres*(ib+ic)-re*(ib+ic)-(0.7)))/ib;
disp("resistance   =   "+string((r1))+"ohm");
stability=(1+beta1)/(1+(beta1*re)/(re+colres));
disp("stability   =   "+string((stability)));//correction in the book


