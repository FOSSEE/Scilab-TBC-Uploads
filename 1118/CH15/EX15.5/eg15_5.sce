clear;
clc;

p1=200;
p2=p1;
a=.2;..// a=del(pl)/del(p2)
l2=1/(1-a);
ic1=.15*p1+150;
ic2=.25*p2+175;
l1=l2*ic2/ic1;
printf("The penalty factor of plant 1 is: %.4f",l1);
