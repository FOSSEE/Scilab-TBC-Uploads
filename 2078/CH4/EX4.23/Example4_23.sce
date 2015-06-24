//Exa 4.23
clc;
clear;
close;
//Given data :
VL=132;//kV
f=50;//Hz
r=5/2;//cm
rdash=0.7788*r*10^-2;//m
d=6.5;//m
s=0.4;//m
epsilon_o=8.854*10^-12;//permitivity
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
C=2*%pi*epsilon_o/log(Dm/Ds);//F/m
C=C/10^-3;//F/km
disp(C,"Capacitance per km(F/km) : ");
Vph=VL*1000/sqrt(3);//Volt
Ic=2*%pi*f*C*Vph;//A/km
disp(Ic,"Charging current per km(A/km) : ");
