//example 30
colcur=8*10^-3;//ampere
re=500;//ohm
vce=3;//volt
beta1=80;
vcc=9;//volt
ib=colcur/beta1;
rb=(vcc-(1+beta1)*(ib*re))/ib;
disp(" base resistance   =   "+string((rb))+"ohm");


