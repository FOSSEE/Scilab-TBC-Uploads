//Exa 4.12
clc;
clear;
close;
//Given data :
r=0.9;//cm
rdash=0.7788*r*10^-2;//m
daa_dash=sqrt(6^2+6^2);//m
dbb_dash=7;//m
dcc_dash=daa_dash;//m
daa=rdash;//m
d_adash_adash=rdash;//m
d_adash_a=daa_dash;//m
Dsa=(daa*daa_dash*d_adash_adash*d_adash_a)^(1/4);//m
Dsb=(daa*7)^(1/2);//m
Dsc=(daa*daa_dash)^(1/2);//m
Ds=(Dsa*Dsb*Dsc)^(1/3);//m
dab=sqrt(3^2+0.5^2);//m
dab_dash=sqrt(3^2+6.5^2);//m
d_adash_b=sqrt(3^2+6.5^2);//m
d_adash_bdash=sqrt(3^2+0.5^2);//m
Dab=(dab*dab_dash*d_adash_b*d_adash_bdash)^(1/4);//m
Dbc=((dab*dab_dash)^2)^(1/4);//m
Dca=((6*6)^2)^(1/4);//m
Dm=(Dab*Dbc*Dca)^(1/3);//m
L=0.2*log(Dm/Ds);//mH/km
disp(L,"Inductance per phase(mH/km)");
