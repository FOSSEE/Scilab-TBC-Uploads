clear;
clc;
a=.5;
pu=.1;//pu ripple
//x=T/T_a
//y=exp(-a*x)
y=(1-pu)/(1+pu);
//after solving
x=log(1/y)/a;
f=1000;
T=1/f;
T_a=T/x;
R=2;
L=R*T_a;
Li=.002;
Le=L-Li;    printf("external inductance=%.3f mH",Le*1000);