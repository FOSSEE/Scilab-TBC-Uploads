clear;
//clc();
lc=0.5;
dep=0.09;
cost_en=0.12;
res=1.76;
l=1;

ann_cost=dep*25000;
lf=0.2*lc + 0.8*(lc^2);
al=3*.1*res*8760*lf/1000;
cost=al*cost_en;
d=ann_cost/cost;
j=sqrt(d);
printf("The current density is:%.2f A/sq cm",j);
