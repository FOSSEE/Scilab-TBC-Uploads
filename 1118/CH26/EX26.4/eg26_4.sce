clear;
//clc();
op=40;
eff=0.85;
ip=op/eff;
p=ip/3;
v=400;

q1=acosd(0.72);
q2=acosd(0.98);

qcp=p*(tand(q1)-tand(q2));
cap=qcp*1000/(v*v*2*(%pi)*50);// capacitance in milli farad
printf("The capacitance is:%.2f uF\n",cap*1000000);
