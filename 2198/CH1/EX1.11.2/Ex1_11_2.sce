//Ex 1.11.2
clc;clear;close;
format('v',9);

//Given : 
T=300;//K
Ao=2.735*10^31;//constant for Si
k=86*10^-6;//boltzman constant
EGO=1.1;//volt(Bandgap energy)
ni=sqrt(Ao*T^3*exp(-EGO/k/T));//per cm^3
disp(ni,"Intrinsic carrier concentration per cm^3 : ");
