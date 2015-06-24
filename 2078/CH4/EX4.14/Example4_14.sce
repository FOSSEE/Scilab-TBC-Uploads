//Exa 4.14
clc;
clear;
close;
//Given data :
r=5/2;//cm
rdash=0.7788*r*10^-2;//m
d=6.5;//m
s=0.4;//m
Ds=sqrt(rdash*s);//m
dab=6.5;//m
dab_dash=6.9;//m
d_adash_b=6.1;//m
d_adash_bdash=6.5;//m
Dab=(dab*dab_dash*d_adash_b*d_adash_bdash)^(1/4);//m
Dbc=Dab;//m
dca=13;//m
dca_dash=12.6;//m
d_cdash_a=13.4;//m
d_cdash_adash=13;//m
Dca=(dca*dca_dash*d_cdash_a*d_cdash_adash)^(1/4);//m
Dm=(Dab*Dbc*Dca)^(1/3);//m
L=0.2*log(Dm/Ds);//mH/km
disp(L,"Inductance per phase(mH/km)");
