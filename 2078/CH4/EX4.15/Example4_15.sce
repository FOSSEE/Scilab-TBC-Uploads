//Exa 4.15
clc;
clear;
close;
//Given data :
f=50;//Hz
r=3.5/2;//cm
rdash=0.7788*r*10^-2;//m
d=7;//m
s=40/100;//m
Ds=sqrt(rdash*s);//m
dab=7;//m
dab_dash=7.4;//m
d_adash_b=6.6;//m
d_adash_bdash=7;//m
Dab=(dab*dab_dash*d_adash_b*d_adash_bdash)^(1/4);//m
Dbc=Dab;//m
dca=14;//m
dca_dash=13.6;//m
d_cdash_a=14.4;//m
d_cdash_adash=14;//m
Dca=(dca*dca_dash*d_cdash_a*d_cdash_adash)^(1/4);//m
Dm=(Dab*Dbc*Dca)^(1/3);//m
L=0.2*log(Dm/Ds);//mH/km
XL=2*%pi*f*L*10^-3;//ohm/km
disp(XL,"Inductive reactance of bundled conductor line(ohm/km)");
//Equivalent single conductor
n=2;
r1=sqrt(n*%pi*r^2/%pi);//m
r1dash=0.7788*r1*10^-2;//m
Dm1=(Dab*Dbc*Dca)^(1/3);//m
L1=0.2*log(Dm1/r1dash);//mH/km
XL1=2*%pi*f*L1*10^-3;//ohm/km
disp(XL1,"Inductive reactance with single conductor(ohm/km)");
