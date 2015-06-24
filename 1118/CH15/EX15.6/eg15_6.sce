clear;
clc;

b11=.001;
b12=-.0001;
b22=.0013;

p1=150;
p2=275;
a=2*p1*b11+2*p2*b12;
l1=1/(1-a);..// a=del(pl)/del(p2)
printf("The penalty factor of plant 1 is: %.4f\n",l1);
lamda=200;
ic1=lamda/l1;
printf("The incremental cost is:%.0f Rs/MWh",ic1);
