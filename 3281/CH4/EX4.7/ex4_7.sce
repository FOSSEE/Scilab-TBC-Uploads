//Page Number: 197
//Example 4.7
clc;
//Given
f=7.07D+9;//hz
a=3;//cm
a1=a/100;//m
sig=5.8D+7;
er=2.25;
tandel=4D-4;
ur=1;
n=377;
w=2*%pi*f;
u=4D-7*%pi;

//Q of resonantor
rs=sqrt(w*u/(2*sig));//ohm
qw=(0.7419*n)/(rs*sqrt(2.25));
qd=1/tandel;
q=(qw*qd)/(qw+qd);
disp(q,'Q of resonator:');
