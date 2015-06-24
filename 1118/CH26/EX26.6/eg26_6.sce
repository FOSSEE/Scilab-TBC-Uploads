clear;
//clc();
p=50/3;
q1=acosd(0.72);
q2=acosd(0.9);

qcp=p*(tand(q1)-tand(q2));
v=415;

ic=qcp/v;
cap=ic*1000/(v*2*(%pi)*50);..// capacitance in milli farad
printf("The capacitance is:%.2f uF\n",cap*1000000);

//in delta connection

vp=v/sqrt(3);

icd=qcp/vp;
cap=icd*1000/(vp*2*(%pi)*50);// capacitance in milli farad
printf("The capacitance is:%.2f uF\n",cap*1000000);
