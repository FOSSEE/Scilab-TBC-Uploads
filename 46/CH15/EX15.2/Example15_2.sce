//Example 15.2
clc
s=%s;
syms Kc;
N=1+(2*s/3)+1/(3*s);
D=(20*s+1)*(10*s+1)*(0.5*s+1);
G=N/D;
G=syslin('c',G);
disp(Kc*G,'G=')
clf
evans(G)
v=[-2.5 1 -5 5];
mtlb_axis(v);
xgrid