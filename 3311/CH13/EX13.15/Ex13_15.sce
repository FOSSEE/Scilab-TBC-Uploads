// chapter 13
// example 13.15
// fig. 13.40
// Plot instantaneous junction temperature
// page-841-842
clear;
clc;
clf;
// given
P2=0, P4=0, P6=0; // in W
P1=1000, P3=1400, P5=700; // in W
t1=1, t3=1, t5=1; // in ms
theta1=0.035, theta3=0.035, theta5=0.035; // in degree C/W
t2=0.5, t4=0.5, t6=0.5; // in ms
theta2=0.025, theta4=0.025, theta6=0.025; // in degree C/W
// calculate
del_TJ1=theta1*P1;
del_TJ1_5=del_TJ1-theta2*P1;
del_TJ2_5=del_TJ1_5+theta3*P3;
del_TJ3=del_TJ2_5-theta4*P3;
del_TJ4=del_TJ3+theta5*P5;
del_TJ4_5=del_TJ4-theta6*P5;
printf("\n\ndel_TJ1=%.f degree C",del_TJ1);
printf("\n\ndel_TJ1_5=%.f degree C",del_TJ1_5);
printf("\n\ndel_TJ2_5=%.f degree C",del_TJ2_5);
printf("\n\ndel_TJ3=%.f degree C",del_TJ3);
printf("\n\ndel_TJ4=%.f degree C",del_TJ4);
printf("\n\ndel_TJ4_5=%.f degree C",del_TJ4_5);
del_TJ=[del_TJ1 del_TJ1_5 del_TJ2_5 del_TJ3 del_TJ4 del_TJ4_5];
plot2d(del_TJ,nax=[1,6,1,7],rect=[0,0,5,60]);
xlabel("t (ms)");
ylabel("del_TJ  (degree C)");
title("Junction temperature rise plot");
// Note :There is calculation mistake in the book while calculating del_TJ_3 and hence all other values are also affected. Thats why answers in the book are wrong