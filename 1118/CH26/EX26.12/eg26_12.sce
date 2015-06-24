clear;
//clc();
p=800;
pf1=.72;
q1=acosd(pf1);
x=500;
y=160;
pf=sqrt(1- (y/x)^2);

q2=acosd(pf);
qc=p*(tand(q1)-tand(q2));

smd=x*p*((1/pf1)-(1/pf));

ann_cost=y*qc;
sav=smd-ann_cost;
printf("The annual saving is:%.0f Rs",sav);
