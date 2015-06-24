//2.25
clc;
Vm=230*2^0.5;
alph1=30;
alph2=150;
w=100*%pi;
wt=2*%pi;
R=10;
Ip_circulating=10.2;
L=2*Vm/(w*Ip_circulating)*(cos(wt)-cosd(alph1));
printf("\n Inductance of current limiting Reactor= %.4f H",L)
Ip_load=Vm/R;
Ip_converter1=Ip_circulating+Ip_load;
printf("\n Peak current of converter 1= %.2f A", Ip_converter1)