clear;
clc;

n=4;
v2=14.2;
v3=20;
a=14.2;..//coeffiecients of the quadratic equation 14.2*k*k+22.6*k-5.8
b=22.6;
c=-5.8;

k=(-b+sqrt(b*b-4*a*c))/(2*a);
v1=v2/(1+k);
v4=(1+6*k+5*k*k+k*k*k)*v1;
V=v1+v2+v3+v4;
vl=sqrt(3)*V;
eff=V/(n*v4);

printf("\n the string efficiency is:  %.2f percent",eff*100);


