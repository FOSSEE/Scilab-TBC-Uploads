clear;
//clc();

op=7500;
eff=0.87;
ip=op/eff;
v=230;

p=ip;
pf=.75;
q1=acosd(pf);
q2=acosd(1);

i=p/(v*pf);
printf("the current is:%.2f A\n",i);
qcp=p*(tand(q1)-tand(q2));

ic=qcp/v;
cap=qcp*1000/(v*v*2*(%pi)*50);// capacitance in milli farad
printf("The capacitance is:%.2f uF\n",cap*1000);

