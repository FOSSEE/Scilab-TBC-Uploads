clear;
//clc();

p=750/3;
v=400;
q1=acosd(0.7);
q2=acosd(0.95);
qcp=p*(tand(q1)-tand(q2));
printf("The kVAr is:%.3f kVAr\n",qcp);
cap=qcp*1000/(v*v*2*(%pi)*50);
printf("The capacitance is:%.0f uF\n",cap*1000000);
