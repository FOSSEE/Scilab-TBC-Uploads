clear;
//clc();
p=900;
q1=acosd(0.65);
x=1000;
y=0.15*2000;
pf=sqrt(1- (y/x)^2);
printf("The power factor is:%.4f lagging\n",pf);

q2=acosd(pf);
qc=p*(tand(q1)-tand(q2));
printf("The capacitance is:%.0f uF\n",qc);
