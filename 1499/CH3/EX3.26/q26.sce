s=%s;
syms k;

num=k*(s+0.5);
den=(s^2)*(s+4.5);
t=syslin('c',num,den);
clf;
evans(t)
xgrid;
