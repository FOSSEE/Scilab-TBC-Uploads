//Example 15.1
clc
s=%s;
syms K;
N=1;
D=poly([-1 -2 -3],'s','roots');
G=syslin('c',N/D);
disp(K*G,'G=')
evans(G)
v=[-3.5 3.5 -6 6];
mtlb_axis(v);
xgrid

