clear;
clc;

Vb=132
Sb=100
X=.15

v1=125
V1=v1/Vb;
Q1=50;
Qpu1=Q1/Sb;

Vn1=(V1 + sqrt(V1^2 - (4*Qpu1*X)))/(2*1);
vn1=Vn1 * Vb;
Vo1=33;
t1=vn1/Vo1;

v2=140
V2=v2/Vb;
Q2=20;
Qpu2=Q2/Sb;

Vn2=(V2 + sqrt(V2^2 - (4*Qpu2*X)))/(2*1);
vn2=Vn2 * Vb;
Vo2=33;
t2=vn2/Vo2;

tm=(t1+t2)/2;
dt=tm-t1;
ts=dt*100/tm

mprintf("tap setting = +- %.0f percent", ts);
