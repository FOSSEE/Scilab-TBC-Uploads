//Exa 4.13
clc;
clear;
close;
format('v',5)
//Given data :
r=5/2;//mm
rdash=2.176*r*10^-3;//m
daa_dash=sqrt(6^2+16^2);//m
dbb_dash=6;//m
dcc_dash=daa_dash;//m
dab=8;//m
dab_dash=sqrt(6^2+8^2);//m
dbc=8;//m
dbc_dash=sqrt(6^2+8^2);//m
dca=16;//m
dca_dash=6;//m
Dsa=sqrt(rdash*daa_dash);//m
Dsb=sqrt(rdash*dbb_dash);//m
Dsc=sqrt(rdash*dcc_dash);//m
Ds=(Dsa*Dsb*Dsc)^(1/3);//m
disp(Ds,"GMD(m) : ");
Dab=(dab*dab_dash)^(1/2);//m
Dbc=(dbc*dbc_dash)^(1/2);//m
Dca=(dca*dca_dash)^(1/2);//m
Dm=(Dab*Dbc*Dca)^(1/3);//m
disp(Dm,"Deq or Dm(m) : ");
L=0.2*log(Dm/Ds);//mH/km
L=L*10^-3*100;//H(for 100 km line)
disp(L,"Inductance of 100 km line(H)");
///Alternate method is given below
d1=dab;//m
d2=dca_dash;//m
L=0.2*log(2^(1/6))*sqrt(d1/rdash)*((d1^2+d2^2)/(4*d1^2+d2^2))^(1/6);//mH
L=L*10^-3*100;//H(for 100 km line)
disp(L,"Using Alternate method, Inductance of 100 km line(H)");

