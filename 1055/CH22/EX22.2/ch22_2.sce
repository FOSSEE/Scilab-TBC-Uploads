// To Determine the source voltage when the load is disconnectedto load p.f (i) unity (ii).8 lag.
clear 
clc;
Vb=500;
Sb=1000;
Zb=Vb^2/Sb;
Xpu=.35*100/Zb;
Zth=1000/5000;
X=Xpu+Zth;
V=1;
Q=0;
P=1;
Eth=V+(Q*X/V)+%i*(P*X/V);
Q=.75;
Eth1=V+(Q*X/V)+%i*(P*X/V);
printf("(i) For p.f unity , Eth=%.2f V",Eth);
disp(Eth1,"(i) For p.f .8 , Eth=");
