clear;
clc;

rhoa=2.85
rhoc=1.70;
sig1=2.71;
sig2=8.89;

a=sqrt(rhoa/rhoc);  //a=diameter of aluminium/diameter of copper
printf("the ratio of diameters is:%.2f\n",a);
b=sig1*rhoa/(sig2*rhoc);  //weight of aluminium/weight of copper

printf("the ratio of weights is:%.2f",b);
