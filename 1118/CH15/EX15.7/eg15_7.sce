clear;
clc;

p1=100;
pl=5;
b11=pl/(p1*p1);
a=2*p1*b11;..// a=del(pl)/del(p1)
l1=1/(1-a);
a1=0;..// a1=del(pl)/del(p1)
l2=1/(1-a1);

printf("The penalty factor of plant 1 is: %.3f\n",l1);
printf("The penalty factor of plant 2 is: %.3f\n",l2);

