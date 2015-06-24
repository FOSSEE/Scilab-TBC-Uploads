// to calculate leakage inductance, magnetisisng inductance,mutual inductance and self-inductance

clc;
V1=2400;
V2=240;
a=V1/V2;
R1=.2;
X1=.45;
Rl=10000;
R2=2*10^-3;
X2=4.5*10^-3;
Xm=1600;
f=50;
l1=X1/(2*%pi*f);disp(l1,'leakage inductance ie l1(H)');
l2=X2/(2*%pi*f);disp(l2,'l2(H)');
Lm1=Xm/(2*%pi*f);disp(Lm1,'magnetising inductance(H)');
L1=Lm1+l1;disp(L1,'self-inductance ie L1(H)');
M=Lm1/a;
L2=l2+M/a;disp(L2,'L2(H)');
k=M/sqrt(L1*L2);disp(k,'coupling factor');