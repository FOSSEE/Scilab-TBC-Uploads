
// Ex5_15
clc;

// Given:
r0=1.4*10^-15;// in m
A1=88;
A2=87;
A3=136;
A4=135;
// Solution:

rSr1=(3.14*(r0*(A1)^(0.33333))^2)/10^-28;// in barns
rSr2=(3.14*(r0*(A2)^(0.33333))^2)/10^-28;// in barns
rXe1=(3.14*(r0*(A3)^(0.33333))^2)/10^-28;// in barns
rXe2=(3.14*(r0*(A4)^(0.33333))^2)/10^-28;// in barns

printf("The geometric cross-section area are %f, %f, %f & %f for Sr(88), Sr(87), Xe(136) & Xe(135) respectively",rSr1,rSr2,rXe1,rXe2)
