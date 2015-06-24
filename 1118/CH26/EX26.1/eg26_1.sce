clear;
//clc();
i1=0.75;
v=240;
p=80;
q1=acosd(1/(3*i1));
q2=0;
ic=i1*cosd(q1)*(tand(q1)-tand(q2));
cap=ic/(v*2*(%pi)*50);
printf("The capaciatnce is:%.2f uF\n",cap*1000000);

t1=acosd(0.95);

ic1=i1*cosd(q1)*(tand(q1)-tand(t1));
cap1=ic1/(v*2*(%pi)*50);
printf("The capaciatnce is:%.2f uF\n",cap1*1000000);
