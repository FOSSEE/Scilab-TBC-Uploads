clear;
clc;

b=[1 -2 ;1 1];
c=[0;450];
a=inv(b)*c;
p1=a(1);
p2=a(2);
ic1=2+.01*p1;
ic2=2+.02*p2;
printf("the incremental fuel cost of first generator is:%.2f Rs/MWh",ic1);
printf("\n the incremental fuel cost of second generator is:%.2f Rs/MWh",ic2);
