clear;
//clc();

x=900;
p=2000;
q1=acosd(0.8);
q2=acosd(0.96);
smd=x*p*((1/cosd(q1))- (1/cosd(q2)));

y=0.15*1950;
ann_cost=y*p*(tand(q1)-tand(q2));
tot_ann=smd-ann_cost;
printf("The annual saving is:%.0f Rs",tot_ann);
