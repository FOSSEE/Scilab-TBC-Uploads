clear;
clc;

Pr=90e6
pf=.9;
S=Pr/(3*pf);

P=Pr/3
Q=sqrt(S^2 - P^2);

V1=220e3/sqrt(3);
V2=220e3/sqrt(3);

R=15
X=50;

tr=sqrt(1-(((R*P)+(X*Q))/(V1^2)));
mprintf("tap setting  tr= %.4f, ts=%.3f",fix(1e4/tr)/1e4,tr)
