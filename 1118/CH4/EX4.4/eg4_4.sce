clear;
//clc();

v=66;
r=10;
e1=5;
e2=4;
e3=3;
gmax1=3.8;

gmax2=2.6;

gmax3=2;

r1=e1*r*gmax1/(e2*gmax2);

r2=e1*r*gmax1/(e3*gmax3);

a=r1/r;
b=r2/r1;

v1=gmax1*r*log([a]);

v2=gmax2*r1*log([b]);

c=(v-v1-v2)/(gmax3*r2);
e=exp(c);

R=e*r2;

dia=2*R;
printf("\n the minimum diameter is:  %.2f mm\n ",dia);
