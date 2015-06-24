//2.26
clc;
Vm=230*2^0.5;
alph1=45;
alph2=135;
w=100*%pi;
wt=2*%pi;
R=10;
Ip_circulating=11.5;
L=2*Vm/(w*Ip_circulating)*(cos(wt)-cosd(alph1));
printf("\n Inductance of current limiting Reactor= %.4f H",L)
Ip_converter1=39.7;
Ip_load= Ip_converter1-Ip_circulating ;
R=Vm/Ip_load;
printf("\n Load resistance= %.3f ohm", R)