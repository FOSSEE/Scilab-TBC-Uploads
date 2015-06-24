//Chapter 11
//Example 11_14
//Page 284

clear;clc;

d_in=2;
d1=4;
d_out=6;
v=66;
e1=5;
e2=3;

vp=v*sqrt(2/3);

g1max=2*vp/d_in/(log(d1/d_in)+e1*log(d_out/d1)/e2);
g2max=2*vp/d1/(e2*log(d1/d_in)/e1+log(d_out/d1));

printf("g1max = %.2f kV/cm \n\n", g1max);
printf("g2max = %.2f kV/cm \n\n", g2max);

