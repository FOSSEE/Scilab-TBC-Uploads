//Example 1_18
clc;
clear;close;

//Given data
Vgate=12;//V
t=60*10^-6;//s
cycle=0.3;
P_peak=6;//W
//part (a)
//P_peak=Vg*Ig leads to 9*Ig^2+Ig-P_peak=0
X=[9 1 -6];//polynomial
Ig=roots(X);//A
Ig=Ig(2);//A(taking +ve value)
Vg=1+9*Ig
Rg=(Vgate-Vg)/Ig;//ohm
disp(Rg,"Series resistance Rg in ohm");
PavgLoss=P_peak*cycle;//W
disp(PavgLoss,"Average power loss in W ");
