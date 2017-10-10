clear;
clc;
v=220;
s=5;
z=4.5;
Vb=11;
sb=50;
Zb=(Vb^2)/s;
Zpu=z/Zb;
mprintf("pu leakage reactance is %f\n",Zpu);
a=Vb/v;
Zs=z/(a^2);
//case2
vb1=220;
Zb1=(vb1^2)/s;
Zpu1=Zs/Zb1;
mprintf("Ratio of pu leakage reactances are %f",Zpu1);
