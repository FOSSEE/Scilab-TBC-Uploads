clc;
y=1.4;
p2!p1=3;
T1=288;
T2s=T1*[(p2!p1)^({y-1}/y)];

nc=0.8;
T2=T1+[T2s-T1]/nc

cps=1.005;
Wi=cps*(T2-T1);
Wo=2*(Wi)/0.98;

T6=923;
cps2=1.15;
T7=T6-Wo/cps2
nT=0.85;
T7s=T6-[(T6-T7)/nT]
y2=1.333;
p8!p9=[p2!p1^2]/[(T6/T7s)^{y2/(y2-1)}];

T8=T6;
T9s=T8/[(p8!p9)^({y2-1}/y2)];

T9=T8-nT*(T8-T9s)
N=cps2*(T8-T9)*0.98;

Tr=0.75;
T4=420.5;
T5=T4+Tr*(T9-T4)

Q=cps2*([T6-T5]+[T8-T7]);
Ceff=N/Q;
disp(Ceff,"cycle efficiency is:");

//part II
GWo=Wo+N/0.98;
Wr=N/GWo;
disp(Wr,"work ratio is:")

//part III
m=5000/N;
disp("kg/s",m,"rate of flow of air is:")
