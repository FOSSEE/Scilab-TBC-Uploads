//chapter 24 Ex 25

clc;
clear;
close;
a=13.86;
rate=4.4;
area1=a*10000;
radius=sqrt(area1/%pi);
circumference=2*(%pi)*radius;
cost=rate*circumference;
mprintf("The area is Rs.%.0f",cost);
