clear;
//clc();

v=60;
gmax=4;
v1=v/exp(1);
r=v1/gmax;
d=2*r;
r1=v/gmax;
d1=2*r1;
v2=v-v1;
R=1.88*r1;
D=2*R;
printf("\n the diameter of cable is:  %f cm\n ",D);

//cable without sheath

x=exp(1);
a=log([x]);
r1=v/gmax;
d1=2*r1;

R1=exp(1)*r1;

D1=2*R1;
printf("\n the diameter of cable without sheath is:  %.2f mm\n ",D1);
