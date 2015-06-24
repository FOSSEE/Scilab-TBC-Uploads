clear
clc
PA=101325;//Pa
HA=36845;//PA.m3.l/mol
CBo=1000;//mol/m3
v=10^-4;//m3*l/s
h=5;//m
A=0.1;//m2
CA=PA/HA;
FBo=v*CBo;
Vr=A*h;
dp=5*10^-3;//mcat
d_solid=4500;//kg/m3cat
De=8*10^-10;//m3l/mcat.s
n=0.5;
b=1;
k=2.35*10^-3;
L=dp/6;
kai_overall=0.02;
kac_ac=0.05;
f=0.6;
//For a half-order reaction
Mt=L*sqrt((n+1)*(k*d_solid*(CA)^(n-1))/(2*De));
E=1/Mt;
rA=(1/((1/(kai_overall))+(1/(kac_ac))+(1/(k*b*(CA^(n-1))*E*f*d_solid))))*(PA/HA);
//From Material Balance
XB=b*rA*Vr/FBo;
printf("\n The conversion of acetone is %f",XB)
