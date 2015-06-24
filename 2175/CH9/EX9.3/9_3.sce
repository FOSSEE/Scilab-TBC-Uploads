clc;
p2!p1=8;
T1=290;
y=1.4;
T2s=T1*({p2!p1}^[(y-1)/y]);
nc=0.8;
T2=[(T2s-T1)/nc]+T1;

cps=1.005;
T3=923;
Wi=cps*(T2-T1);
Wo=Wi;
cps2=1.15;
T4=T3-[Wo/cps2]

nt=0.85;
T4s=T3-[(T3-T4)/nt];

p3=8*1.01;
y2=1.333;
p4=p3/[(T3/T4s)^{y2/(y2-1)}];
disp("bar",p4,"pressure at entry of the LP.");
disp("K",T4,"temperature at the entry of LP.");

p4!p5=p2!p1*(p4/p3);
T5s=T4/[(p4!p5)^{(y2-1)/y2}];

nT=0.83;
T5=T4-[nT*(T4-T5s)]
WoLP=cps2*(T4-T5);

N=WoLP*1;
Wr=WoLP/(WoLP+Wo);
disp("kW",Wr,"Work ratio is :");

Q=cps2*(T3-T2);
disp("kJ/kg",Q,"Heat supplied is:");

Ceff=N/Q;
disp("%",Ceff*100,"cycle efficiency is:");

