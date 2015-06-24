//Chapter 8
//Example 8_24
//Page 194

clear;clc;

l=600;
wi=1;
h=15;
w=1.925;
t=8000*2.2/5;

wt=w+wi;
d=2*h*t/(1+w)/l;

A=[1 1; -1 1];
b=[l; d];
X=A\b;
x1=X(1);
x2=X(2);

s2=wt*x2^2/2/t;

printf("x1 = %.0f m \n", x1);
printf("x2 = %.0f m \n\n", x2);
printf("S2 = %.2f m \n", s2);

