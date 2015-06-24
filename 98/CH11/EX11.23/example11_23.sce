//Chapter 11
//Example 11_23
//Page 297

clear;clc;

q=1;
p=2.75*q;
r1=1;
m1=1000;
r2=2.25;
m2=1000;
l=500;

r=r1/m1*l+r2/m2*l;
x=q/(p+q)*r;
d=x*1000;

printf("Resistance of the loop = %.3f ohm \n\n", r);
printf("Resistance of faulty cable from test end upto fault point = %.3f ohm \n\n", x);
printf("Distance of fault point from the testing end = %.0f m \n\n", d);
