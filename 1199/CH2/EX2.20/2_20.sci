// 2.20
clc;
dR=0.013;
R=240;
l=0.1;
Gf=2.2;
dl=(dR/R)*l/Gf*10^6;
printf(" Change in length= %.1f um ",dl)

strain=dl*10^-6/l;
E=207*10^9;
s=E*strain;
A=4*10^-4;
F=s*A;
printf("\n Force= %.2f N ",F)