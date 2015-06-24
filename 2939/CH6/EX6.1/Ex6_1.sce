
//Ex6_1
clc;
// Given:
d1=7.9;// density of Gd
d2=2.31;// Density of In
a1=49;// in Kb
a2=155;// in b
m1=157.25;
m2=114.8;
Na=6.02*10^23;
// Solution:
x1=log(1/(1/2))/((d1*Na*a1*10^-24*10^3)/m1);// half-thickness for Gd


x2=log(1/(1/2))/((d2*Na*a2*10^-24)/m2);// half-thickness for In

r=x2/x1;
printf("The half-thickness of In is %f times more than of Gd.",r)
