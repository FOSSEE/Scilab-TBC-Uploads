clear;
clc;
s=2, l1=11,l2=19,ma=24,mi=16,u=3*10^8,Zo=50;
l=(l2-l1)*2;
disp(l,'Lamda =');
f=u/l;
disp(f*10^-6,'Frequency im MHz =');
L=(24-19)/l;//Let us assume load is at 24cm
zl=1.4+.75*%i; //by smith chart
Zl=Zo*zl;
disp(Zl,'Zl =')