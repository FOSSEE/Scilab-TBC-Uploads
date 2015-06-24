clear;
//clc();
i1=20;
f=50;
v=230;
q1=acosd(0.75);
q2=acosd(0.9);

ic=i1*cosd(q1)*(tand(q1)-tand(q2));

cap=ic/(v*2*(%pi)*f);
printf("The capaciatnce is:%.2f uF\n",cap*1000000);

qc=v*ic;
printf("The kVAr is:%.3f kVAr\n",qc/1000);
i2=i1*cosd(q1)/cosd(q2);
printf("the new supply current is:%.2f A",i2);
