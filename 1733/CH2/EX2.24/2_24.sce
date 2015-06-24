//2.24
clc;
Vm=230*2^0.5;
alph1=60;
alph2=120;
w=100*%pi;
L=50*10^-3;
wt=2*%pi;
R=15;
Ip_circulating=2*Vm/(w*L)*(cos(wt)-cosd(alph1));
printf("\n Peak circulating current= %.1f A",Ip_circulating)
Ip_load=Vm/R;
Ip_converter1=Ip_circulating+Ip_load;
printf("\n Peak current of converter 1= %.2f A", Ip_converter1)