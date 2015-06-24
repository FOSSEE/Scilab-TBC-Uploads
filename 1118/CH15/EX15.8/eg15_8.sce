clear;
clc;

p1=125;
pl=12.5
b12=0;
b22=0;

b11=pl/(p1*p1);
lamda=70;
a=.000016;
p1=82.8729;..//ic1=.25*p1+40;
p2=100;
pl=.0008*p1*p1;
pr=p1+p2-pl;
printf("The total load is:%.4f MW\n",pr);
l1=1/(1-a);
a1=0;
l2=1/(1-a1);
p2=(lamda-50)/.2;
printf("for the optimal dispatch P1=%.2f MW\n",p1);
printf("for the optimal dispatch P2=%.2f MW",p2);..//ic2=.20*p2+50
